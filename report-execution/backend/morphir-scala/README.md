# Scala Generation of Minimal Rosetta

### Code Generation Instructions

1. Change directories into `PROJECT_ROOT/morphir`
2. Execute `morphir-elm make`
3. The `morphir-elm gen -t Scala -c`

This will create a `dist` which can then be copied into this project

Current issues:

- `BasicTypes` references `morphir.sdk.LocalTime` which is missing from the generated SDK
- Used Scala version `2.12.15` this seems to be compatible but should be checked