param([string]$RepositoryRoot = (Split-Path $PSScriptRoot -Parent))

$ErrorActionPreference = 'Stop'
function Assert([bool]$Condition, [string]$Message) { if (!$Condition) { throw $Message } }

$xmlFiles = Get-ChildItem -LiteralPath (Join-Path $RepositoryRoot 'Defs'), (Join-Path $RepositoryRoot 'Patches') -Recurse -Filter *.xml
foreach ($file in $xmlFiles) {
    $null = [xml](Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8)
}

[xml]$shapePatch = Get-Content -LiteralPath (Join-Path $RepositoryRoot 'Patches/FacialAnimationShapeDefs_Helod.xml') -Raw -Encoding UTF8
foreach ($shape in 'cry', 'dead') {
    $fallback = $shapePatch.SelectSingleNode("//FacialAnimation.LidShapeDef[defName='$shape']")
    Assert ($null -ne $fallback -and [string]$fallback.disableEyeball -eq 'true') "$shape fallback does not hide eyeballs."
    $expectedXPath = "/Defs/FacialAnimation.LidShapeDef[defName=`"$shape`"]/disableEyeball"
    $existingDefFix = @($shapePatch.SelectNodes('//li[xpath]') | Where-Object { [string]$_.xpath -eq $expectedXPath })[0].nomatch
    Assert ($null -ne $existingDefFix -and [string]$existingDefFix.value.disableEyeball -eq 'true') "$shape existing-def patch is missing."
}

[xml]$expressions = Get-Content -LiteralPath (Join-Path $RepositoryRoot 'Defs/AnimationDefs/Helod/Expressions.xml') -Raw -Encoding UTF8
$highPain = $expressions.SelectSingleNode('/Defs/FacialAnimation.FaceAnimationDef[defName="HD_FA_HelodPainHigh"]')
$criticalPain = $expressions.SelectSingleNode('/Defs/FacialAnimation.FaceAnimationDef[defName="HD_FA_HelodPainCritical"]')
Assert ($null -ne $highPain -and $null -ne $criticalPain) 'Pain expression definitions are missing.'
$highMouth = [string]$highPain.animationFrames.li.mouthShapeDef
Assert ($highMouth -in 'down', 'sad') 'High pain must use a down/sad mouth.'
Assert ($highMouth -ne 'tight') 'High pain still uses the tight mouth.'
Assert ([single]$highPain.targetPainMax -eq [single]$criticalPain.targetPainMin) 'High/critical pain ranges contain a gap or overlap.'

Write-Output "PASS: $($xmlFiles.Count) facial XML files parse."
Write-Output 'PASS: cry/dead hide eyeballs for both existing and fallback ShapeDefs.'
Write-Output "PASS: high pain uses '$highMouth' and transitions continuously into critical pain."
