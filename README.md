# Helodrace - Facial Animation

Compatibility patch mod for using Helodrace with Facial Animation.

## Structure

- `About/`: RimWorld mod metadata.
- `Defs/FaceAdjustmentDefs/`: Facial Animation size and offset defs for Helod pawns.
- `Defs/FaceTypeDefs/Helod/`: Facial Animation face-part type defs.
- `Patches/Helodrace/`: XML patch operations for adding Facial Animation comps to Helod.
- `Source/HelodraceFacial/`: C# component that keeps the rare Normal0 lid and mouth textures paired.
- `Assemblies/`: compiled runtime assembly.
- `Textures/Things/Pawn/Helod/`: face-part textures for Helod pawns.
- `TexturePathReferences/`: reference folder for texture path examples.
