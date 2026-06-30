# Helod Facial 1 Set Missing Texture Checklist

Reference source: `TexturePathReferences/Textures/Things/Pawn/Miho`

Current target: `Textures/Things/Pawn/Helod`

Comparison basis:

- PNG files only. `.dds.zstd` files are ignored for this checklist.
- Current active Helod defs use:
  - `Brows/Normal`
  - `Eyes/Normal1`
  - `Heads_Blank/Helod`
  - `Lids/Normal1`
  - `Mouth/Normal1`
- Reference paths were mapped from `Miho` to `Helod`.
- `Heads_Blank/Miho` was mapped to `Heads_Blank/Helod`.

## Existing Files

These files already exist in the Helod texture folder:

```text
Textures/Things/Pawn/Helod/Brows/Normal/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Eyes/Normal1/Unisex/normal_highlight_south.png
Textures/Things/Pawn/Helod/Eyes/Normal1/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex/blush_cover_south.png
Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Lids/Normal1/Unisex/normal_bottom_south.png
Textures/Things/Pawn/Helod/Lids/Normal1/Unisex/normal_cover_south.png
Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex/sad_south.png
```

## Missing For Current Defs

These are referenced by the current style set and should be made to match the reference coverage.

### Head

Target folder: `Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex`

```text
blush_cover_east.png
cold_cover_east.png
cold_cover_south.png
fish_east.png
fish_north.png
fish_south.png
fish2_east.png
fish2_north.png
fish2_south.png
fish3_east.png
fish3_north.png
fish3_south.png
hot_cover_east.png
hot_cover_south.png
normal_east.png
normal_north.png
```

### Brow

Target folder: `Textures/Things/Pawn/Helod/Brows/Normal/Unisex`

```text
angled_east.png
angled_south.png
flat_east.png
flat_south.png
normal_east.png
s-shaped_east.png
s-shaped_south.png
```

### Eye

Target folder: `Textures/Things/Pawn/Helod/Eyes/Normal1/Unisex`

```text
heart_highlight_east.png
heart_highlight_south.png
normal_east.png
normal_highlight_east.png
```

### Lid

Target folder: `Textures/Things/Pawn/Helod/Lids/Normal1/Unisex`

```text
close_bottom_east.png
close_bottom_south.png
close_cover_east.png
close_cover_south.png
fish_cover_east.png
fish_cover_south.png
half_cover_east.png
half_cover_south.png
normal_bottom_east.png
normal_cover_east.png
```

### Mouth

Target folder: `Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex`

```text
down_east.png
down_south.png
fish_east.png
fish_south.png
normal_east.png
open_east.png
open_south.png
sad_east.png
smile_east.png
smile_south.png
```

## Missing Optional/Controller Sets

The Helod patch currently adds `EmotionControllerComp`, `SkinControllerComp`, and `LidOptionControllerComp`, but there are no Helod defs/textures for these sets yet. If we want full parity with the reference, these should be added too.

### Emotion

Required def file to add: `Defs/FaceTypeDefs/Helod/EmotionType.xml`

Target folder: `Textures/Things/Pawn/Helod/Emotions/Normal/Unisex`

```text
cheerful_east.png
cheerful_north.png
cheerful_south.png
gloomy_east.png
gloomy_north.png
gloomy_south.png
```

### Lid Option

Required def file to add: `Defs/FaceTypeDefs/Helod/LidOptionType.xml`

Reference uses gender folders instead of `Unisex`.

Target folders:

```text
Textures/Things/Pawn/Helod/LidOptions/Normal/Female
Textures/Things/Pawn/Helod/LidOptions/Normal/Male
```

Files needed in each folder:

```text
tear_east.png
tear_south.png
```

### Skin Overlays

Required def file to add: `Defs/FaceTypeDefs/Helod/SkinType.xml`

Target folder: `Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex`

```text
normal_east.png
normal_north.png
normal_south.png
normal_west.png
```

Target folder: `Textures/Things/Pawn/Helod/Skins/RightEye/Unisex`

```text
normal_east.png
normal_north.png
normal_south.png
normal_west.png
```

## Summary

Current active def texture gaps:

```text
Head: 16 missing
Brow: 7 missing
Eye: 4 missing
Lid: 10 missing
Mouth: 10 missing
```

Optional/controller texture gaps:

```text
Emotion: 6 missing, plus EmotionType.xml
LidOption: 4 missing, plus LidOptionType.xml
Skin overlays: 8 missing, plus SkinType.xml
```

