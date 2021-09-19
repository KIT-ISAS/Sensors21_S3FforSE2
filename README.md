# The State Space Subdivision Filter for Estimation on SE(2)

This repository is the official repository for [The State Space Subdivision Filter for Estimation on SE(2)](placeholder).

## Requirements
For the evaluation, Matlab is required. The code was tested on Matlab 2021a. The code requires [libDirectional](https://github.com/KIT-ISAS/libDirectional), which requires certain Matlab toolboxes. The code also uses the [FilterEvaluationFramework](https://github.com/FlorianPfaff/FilterEvaluationFramework). Both libDirectional and the FilterEvaluationFramework are included as submodules for your convenience.

## Data Sets

The data for the two evaluations will be made publically available upon the release of the paper.

## Evaluation

To do new evaluation runs, run

```evaluation1
doEvalsTrajectory
```
using Matlab for the first evaluation.. For the second evaluation, run

```evaluation2
doEvals50thTimeStep
```

## License
My code is under GPL 3.0. Code by other authors listed as requirements is linked to as submodules and no code  by other people is directly contained in this repository. All submodules are under their respective licenses.

## Contributing
Open an issue or write me an email to <pfaff@kit.edu> if you have suggestions or experience issues.