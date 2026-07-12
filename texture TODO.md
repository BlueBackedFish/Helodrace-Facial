# Helod Facial 1 세트 누락 텍스처 체크리스트

참조 원본: `TexturePathReferences/Textures/Things/Pawn/Miho`

현재 대상: `Textures/Things/Pawn/Helod`

비교 기준:

- PNG 파일만 대상으로 합니다. 이 체크리스트에서는 `.dds.zstd` 파일을 제외합니다.
- 현재 활성화된 Helod 정의에서는 다음 경로를 사용합니다:
  - `Brows/Normal`
  - `Eyes/Normal1`
  - `Heads_Blank/Helod`
  - `Lids/Normal1`
  - `Mouth/Normal1`
- 참조 경로의 `Miho`를 `Helod`로 대응시켰습니다.
- `Heads_Blank/Miho`는 `Heads_Blank/Helod`에 대응시켰습니다.

## 기존 파일

다음 파일은 Helod 텍스처 폴더에 이미 존재합니다:

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

## 현재 정의에서 누락된 파일

다음 파일은 현재 스타일 세트에서 참조되며, 참조 원본과 동일한 범위를 지원하도록 제작해야 합니다.

### 머리

대상 폴더: `Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex`

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

### 눈썹

대상 폴더: `Textures/Things/Pawn/Helod/Brows/Normal/Unisex`

```text
angled_east.png
angled_south.png
flat_east.png
flat_south.png
normal_east.png
s-shaped_east.png
s-shaped_south.png
```

### 눈

대상 폴더: `Textures/Things/Pawn/Helod/Eyes/Normal1/Unisex`

```text
heart_highlight_east.png
heart_highlight_south.png
normal_east.png
normal_highlight_east.png
```

### 눈꺼풀

대상 폴더: `Textures/Things/Pawn/Helod/Lids/Normal1/Unisex`

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

### 입

대상 폴더: `Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex`

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

## 누락된 선택 사항/컨트롤러 세트

현재 Helod 패치에는 `EmotionControllerComp`, `SkinControllerComp`, `LidOptionControllerComp`가 추가되어 있지만, 아직 이 세트에 해당하는 Helod 정의와 텍스처가 없습니다. 참조 원본과 완전히 동일하게 지원하려면 이 항목들도 추가해야 합니다.

### 감정

추가해야 할 필수 정의 파일: `Defs/FaceTypeDefs/Helod/EmotionType.xml`

대상 폴더: `Textures/Things/Pawn/Helod/Emotions/Normal/Unisex`

```text
cheerful_east.png
cheerful_north.png
cheerful_south.png
gloomy_east.png
gloomy_north.png
gloomy_south.png
```

### 눈꺼풀 옵션

추가해야 할 필수 정의 파일: `Defs/FaceTypeDefs/Helod/LidOptionType.xml`

참조 원본에서는 `Unisex` 대신 성별 폴더를 사용합니다.

대상 폴더:

```text
Textures/Things/Pawn/Helod/LidOptions/Normal/Female
Textures/Things/Pawn/Helod/LidOptions/Normal/Male
```

각 폴더에 필요한 파일:

```text
tear_east.png
tear_south.png
```

### 피부 오버레이

추가해야 할 필수 정의 파일: `Defs/FaceTypeDefs/Helod/SkinType.xml`

대상 폴더: `Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex`

```text
normal_east.png
normal_north.png
normal_south.png
normal_west.png
```

대상 폴더: `Textures/Things/Pawn/Helod/Skins/RightEye/Unisex`

```text
normal_east.png
normal_north.png
normal_south.png
normal_west.png
```

## 요약

현재 활성 정의에서 누락된 텍스처:

```text
머리: 16개 누락
눈썹: 7개 누락
눈: 4개 누락
눈꺼풀: 10개 누락
입: 10개 누락
```

선택 사항/컨트롤러 텍스처 누락:

```text
감정: 6개 누락, EmotionType.xml도 필요
눈꺼풀 옵션: 4개 누락, LidOptionType.xml도 필요
피부 오버레이: 8개 누락, SkinType.xml도 필요
```
