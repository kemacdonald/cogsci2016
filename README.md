# Create CogSci proceedings submission with RMarkdown
Cogsci2016 is a R-package that includes a [RMarkdown](http://rmarkdown.rstudio.com/) template to create a camera ready submission to the [Annual Cognitive Science Conference](http://cognitivesciencesociety.org/conference2016/submissions.html). It uses the LaTeX template specifically designed to format CogSci Conference Proceedings.

## Setup
### Requirements
Before using `cogsci2016`, make sure the following software is installed on your computer:

- [R](http://www.r-project.org/) (2.11.1 or later)
- [RStudio](http://www.rstudio.com/) (0.98.932 or later) is optional; if you don't use RStudio, you need to install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your operating system](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md)
- A [TeX](http://de.wikipedia.org/wiki/TeX) distribution (2013 or later; e.g., [MikTeX](http://miktex.org/) for Windows, [MacTeX](https://tug.org/mactex/) for Mac, obviously, or [TeX Live](http://www.tug.org/texlive/) for Linux)
 
### Install cogsci2016
Finally install `cogsci2016` from this GitHub repository:

```S
devtools::install_github("kemacdonald/cogsci2016")
```

### Create a manuscript
Once you have installed the `cogsci2016` package you can select the CogSci template when creating a new Markdown file through the menus in RStudio.

![CogSci template selection](http://stanford.edu/~kylem4/cogsci2016.png)

You can add citations to the library.bib file that gets created when you open a new template file.

There is more information about authoring in R Markdown located in the .Rmd file itself.
