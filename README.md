# IMT PhD Thesis template

This repository contains the IMT Lucca PhD Thesis template.
It is an update of the template created by Alessio Botta in 2008.

This repository can be found on the [insitutional GitHub account of IMT Luca](https://github.com/IMTAltiStudiLucca/imtthesis/edit/master/README.md), were issues and questions can be discussed and *fixes* (i.e. Pull Requests) can be applied, so that future PhD generations may not have the same problems in compiling this template.
If you are not able to see the repository, you may need to ask the IT Staff to add your account to the [IMT GitHub Organisation](https://github.com/IMTAltiStudiLucca/).


## Overleaf

To use the theme on [overleaf](https://www.overleaf.com), simple download this repo as a `*.zip` file using the `Clone or Download` Button in the upper left corner of the GitHub interface and then load the `imtthesis-master.zip` file as a new project.
Or if you have obtained this repository already as a `zip` file simply upload it as is.
Remember to set `thesis.tex` as the main document.

## Name of the PhD Title

The PhD title you are awarded by IMT, at the time of writing, is of the form 

**PhD in Institutions, Markets and Technologies - Curriculum in |INSERT TRACK NAME|**

If in doubt be sure to check with the PhD office.
To set the title in the template you have to define the following two variables in `thesis.tex`

```latex
\phdname{PhD in Institutions, Markets and Technologies}
\curriculum{Economics, Management and Data Science}
```


## Issues and Problems

If you have issues with the template or want to make it better use
GitHub's Issue and pull request system.
This sytem will make it easier for future students to solve similar problems
and it makes it easier to maintain a working copy of the template.


## The name of the School

Please remember the official name of IMT is: **"IMT School for Advanced Studies Lucca"**

In order to avoid to type the name over and over again you can use the `\IMT` command
provied in the LaTeX template which will expand to the correct name.



```
.
├── Makefile // Contains rules to compile output and clean up files
├── appendix
│   └── A
│       └── appA.tex
├── backmatter
├── frontmatter
│   ├── abstract.tex
│   ├── acknowledgement.tex
│   ├── dedication.tex
│   └── vita.tex
├── mainmatter
│   ├── 1
│   │   ├── figures
│   │   └── introduction.tex
│   ├── 2
│   │   ├── figures
│   │   ├── methods_and_methods.bib
│   │   └── methods_and_methods.tex
│   └── 5
│       └── conclusion.tex
├── phdimt.cls  // The base class
├── references.bib
└── thesis.tex  // MAIN Document
```
