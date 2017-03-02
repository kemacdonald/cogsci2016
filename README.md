# Create ACL/EACL proceedings submission with RMarkdown
Acl2017 is a R-package that includes a [RMarkdown](http://rmarkdown.rstudio.com/) template to create a camera ready submission to the [Annual Conference of the European Chapter of the Association for Computational Linguistics](http://eacl2017.org/images/site/eacl-2017-template.zip). It uses the LaTeX template designed to format ACL Conference Proceedings.

## Important note!!!
Sadly, the way RMarkdown automatically handles citations ends up basically "hardcoding" the citations in to the .tex file.  Unfortunately, ACL wants a very specific (and very restrictive) way of citing, so I have had to brutalize my perfect adopted baby so that it can actually work with what ACL wants.  That means knitting is now a two-step process. Read the instructions in the automatically generated `.Rmd` file for more information about what to do.


## Setup
### Requirements
To use `acl2017`, make sure the following software is installed:

- [R](http://www.r-project.org/) (2.11.1 or later)
- [RStudio](http://www.rstudio.com/) (0.98.932 or later) is optional; if you don't use RStudio, you need to install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your operating system](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md)
- A [TeX](http://de.wikipedia.org/wiki/TeX) distribution (2013 or later; e.g., [MikTeX](http://miktex.org/) for Windows, [MacTeX](https://tug.org/mactex/) for Mac, or [TeX Live](http://www.tug.org/texlive/) for Linux)
 
### Install acl2017
Install `acl2017` from this GitHub repository:

```S
devtools::install_github("burchill/acl2017")
```

### Create a manuscript
Once you have installed the `acl2017` package you can select the CogSci template when creating a new Markdown file through the menus in RStudio.

<img src="http://stanford.edu/~kylem4/cogsci2016.png" alt="menu select" width="400px" height="300px"">

When you select "OK" you will create a directory that contains the following folders/files:

* library.bib (bibtex database of all reference-list entries)
* apa6.csl (for creating apa style citations)
* figs (folder to store local images)
* .Rmd (R Markdown file)
* cogsci.sty (CogSci specific styles in latex)

There is more information about authoring in R Markdown located in the cogsci2016 template .Rmd file.

### Author information

Note that there is some latex in the document header (the YAML). This allows you to 
format the author and affiliation information. Here is the latex code for different author styles from the CogSci submissions package.

```latex
For several authors from the same institution use: 
 
 \author{Author 1 \and ... \and Author n \\
         Address line \\ ... \\ Address line}
 
 If the names do not fit well on one line use:
 
         Author 1 \\ {\bf Author 2} \\ ... \\ {\bf Author n} \\
 
For authors from different institutions:
 
 \author{Author 1 \\ Address line \\  ... \\ Address line
         \And  ... \And
         Author n \\ Address line \\ ... \\ Address line}
 
To start a seperate ``row'' of authors use \AND, as in
 
 \author{Author 1 \\ Address line \\  ... \\ Address line
         \AND
         Author 2 \\ Address line \\ ... \\ Address line \And
         Author 3 \\ Address line \\ ... \\ Address line}
```

## Another APA style template
The `acl2017` package is just a slightly edited version of Kyle MacDonald's `cogsci2016`, which is in turn inspired by [Frederik Aust's papaj package](https://github.com/crsh/papaja): Create APA manuscripts with RMarkdown. This is a great resource for creating APA style manuscripts in R Markdown.

