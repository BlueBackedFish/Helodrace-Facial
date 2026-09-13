# Helod Facial 일반 표정 텍스처 TODO

참조 원본: `TexturePathReferences/Textures/Things/Pawn/Miho`

현재 대상: `Textures/Things/Pawn/Helod`

## 작업 범위

- PNG 파일만 대상으로 하며 `.dds.zstd`와 작업 원본 파일은 제외합니다.
- 기본 얼굴, 눈 깜빡임, 일반적인 행동 표정, 무드 변화에 필요한 텍스처만 포함합니다.
- 미호 전용 개그/특수 표정은 이번 작업 범위에서 제외합니다.
- 현재 Helod 정의에서 사용하는 다음 한 세트만 제작합니다.
  - `Brows/Normal`
  - `Eyes/Normal1`
  - `Heads_Blank/Helod`
  - `Lids/Normal1`
  - `Mouth/Normal1`
  - `Emotions/Normal`

## 현재 완료된 기본 텍스처

### 머리

대상 폴더: `Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex`

```text
[x] normal_east.png
[x] normal_south.png
[x] blush_cover_east.png
[x] blush_cover_south.png
```

### 눈썹

대상 폴더: `Textures/Things/Pawn/Helod/Brows/Normal/Unisex`

```text
[x] normal_east.png
[x] normal_south.png
```

### 눈

대상 폴더: `Textures/Things/Pawn/Helod/Eyes/Normal1/Unisex`

```text
[x] normal_east.png
[x] normal_south.png
[x] normal_highlight_east.png
[x] normal_highlight_south.png
```

### 눈꺼풀

대상 폴더: `Textures/Things/Pawn/Helod/Lids/Normal1/Unisex`

```text
[x] normal_cover_east.png
[x] normal_cover_south.png
[x] normal_bottom_east.png
[x] normal_bottom_south.png
[x] close_cover_east.png
[x] close_cover_south.png
```

### 입

대상 폴더: `Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex`

```text
[x] normal_east.png
[x] normal_south.png
[x] sad_east.png
[x] sad_south.png
```

## 우선순위 1: 기본 얼굴과 눈 깜빡임 완성

### 머리

대상 폴더: `Textures/Things/Pawn/Helod/Heads_Blank/Helod/Unisex`

```text
[ ] normal_north.png
```

북쪽에서는 다른 얼굴 파츠를 그리지 않으므로 기본 머리 텍스처만 필요합니다.

### 눈꺼풀

대상 폴더: `Textures/Things/Pawn/Helod/Lids/Normal1/Unisex`

```text
[ ] half_cover_east.png
[ ] half_cover_south.png
[ ] close_bottom_east.png
[ ] close_bottom_south.png
```

- `half_cover`: 눈 깜빡임 중간 프레임 및 매우 낮은 무드에서 사용합니다.
- `close_bottom`: 미호 원본처럼 완전 투명한 자리표시자 이미지로 제작해도 됩니다.
- `half_bottom`은 미호 원본에도 없으며 `normal_bottom`을 그대로 사용하므로 필요하지 않습니다.

## 우선순위 2: 낮은 무드 표현

미호 기준 무드 20~40%에서는 `s-shaped` 눈썹을 사용합니다.

무드 0~20%에서는 다음 조합을 사용합니다.

```text
gloomy 감정 오버레이
s-shaped 눈썹
half 눈꺼풀
sad 입
```

`half_cover`는 우선순위 1에 포함되어 있고 `sad` 입은 이미 완료되어 있습니다.

### 눈썹

대상 폴더: `Textures/Things/Pawn/Helod/Brows/Normal/Unisex`

```text
[ ] s-shaped_east.png
[ ] s-shaped_south.png
```

### 감정 오버레이

대상 폴더: `Textures/Things/Pawn/Helod/Emotions/Normal/Unisex`

```text
[ ] gloomy_east.png
[ ] gloomy_south.png
[ ] gloomy_north.png
```

감정 오버레이 사용을 위해 다음 정의도 추가해야 합니다.

```text
[ ] Defs/FaceTypeDefs/Helod/EmotionType.xml
```

## 우선순위 3: 높은 무드 표현

미호 기준 무드 80~100%에서는 `cheerful` 감정 오버레이와 `smile` 입을 사용합니다.

### 입

대상 폴더: `Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex`

```text
[ ] smile_east.png
[ ] smile_south.png
```

### 감정 오버레이

대상 폴더: `Textures/Things/Pawn/Helod/Emotions/Normal/Unisex`

```text
[ ] cheerful_east.png
[ ] cheerful_south.png
[ ] cheerful_north.png
```

## 우선순위 4: 일반적인 행동 표정

### 눈썹

대상 폴더: `Textures/Things/Pawn/Helod/Brows/Normal/Unisex`

```text
[ ] angled_east.png
[ ] angled_south.png
[ ] flat_east.png
[ ] flat_south.png
```

- `angled`: 전투, 공격, 집중 상태
- `flat`: 수면, 다운, 지친 상태

### 입

대상 폴더: `Textures/Things/Pawn/Helod/Mouth/Normal1/Unisex`

```text
[ ] open_east.png
[ ] open_south.png
[ ] down_east.png
[ ] down_south.png
```

- `open`: 대화, 식사, 공격 등의 입을 여는 동작
- `down`: 공포, 도망, 고통, 다운 상태

## 별도 선택 사항

다음 컨트롤러는 현재 Helod 패치에 추가되어 있지만 일반 무드 표현 세트에는 포함하지 않습니다.

### 눈물

필요할 경우 별도 제작:

```text
Defs/FaceTypeDefs/Helod/LidOptionType.xml
Textures/Things/Pawn/Helod/LidOptions/Normal/Female/tear_east.png
Textures/Things/Pawn/Helod/LidOptions/Normal/Female/tear_south.png
Textures/Things/Pawn/Helod/LidOptions/Normal/Male/tear_east.png
Textures/Things/Pawn/Helod/LidOptions/Normal/Male/tear_south.png
```

### 피부 오버레이

상처나 특수 피부 표시가 필요할 경우 별도 제작:

```text
Defs/FaceTypeDefs/Helod/SkinType.xml
Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex/normal_east.png
Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex/normal_north.png
Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Skins/LeftChin/Unisex/normal_west.png
Textures/Things/Pawn/Helod/Skins/RightEye/Unisex/normal_east.png
Textures/Things/Pawn/Helod/Skins/RightEye/Unisex/normal_north.png
Textures/Things/Pawn/Helod/Skins/RightEye/Unisex/normal_south.png
Textures/Things/Pawn/Helod/Skins/RightEye/Unisex/normal_west.png
```

## 누락 수량 요약

```text
우선순위 1 - 기본/깜빡임: 5장
우선순위 2 - 낮은 무드: 5장
우선순위 3 - 높은 무드: 5장
우선순위 4 - 일반 행동: 8장

총 누락 텍스처: 23장
추가 정의: EmotionType.xml 1개
```

## 정의 작업 주의사항

텍스처만 추가해도 무드 표정이 자동으로 적용되지는 않습니다.

텍스처 제작 후 미호의 `Mood.xml`을 참고하여 Helod용 무드 `FaceAnimationDef`를 추가해야 합니다. 일반 행동 표정도 사용할 애니메이션 정의에서 해당 `browShapeDef`, `lidShapeDef`, `mouthShapeDef`를 호출해야 합니다.
