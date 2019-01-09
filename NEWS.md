# cogsci2016 1.0 - Development

###  Major changes

- Updated package to create anonymized submission, which is a new requirement for CogSci 2019. See this [link](https://github.com/rlevy/cogsci-template) for more information about the updated latex template used in this version of the package.
    - `final-submission: \cogscifinalcopy` line added to yaml. If this line is commented
    out using the `#` character, then the submission will be anonymized. 

### Minor changes

- Cleaned up some minor issues with importing packages, so `devtools::check()` no 
longer throws warnings.
- Added the following external dependencies: 
    - yaml (>= 2.1.19),
    - tools
    - utils
- Added the following template files:
    - cogsci.sty
    - apacite.sty
    - apacite.bst 
        
# cogsci2016 0.9

- Initial package release.
