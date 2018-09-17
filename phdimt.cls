% Author: Alessio Botta 2008

\ProvidesClass{phdimt}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[pdftex,a5paper]{book}

% Packages and some basic initializations

\usepackage{subfigure}
\usepackage{graphics}
\usepackage{booktabs}
\usepackage{tabularx}
\usepackage[margin=10pt,font=small,labelfont=bf]{caption}
\setlength{\belowcaptionskip}{5pt}
\setlength{\abovecaptionskip}{5pt}
\usepackage[english]{babel}
\usepackage[usenames,dvipsnames]{color}
\usepackage[backend=biber,natbib=true,style=authoryear]{biblatex}
\usepackage{csquotes}
\usepackage{etoolbox}
\usepackage{ifthen}
\usepackage{multirow}
\usepackage[nottoc,numbib]{tocbibind}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage[twoside=false,a5paper,bottom=1.5cm,top=1.8cm,right=1.8cm,left=1.8cm,includefoot]{geometry}
\usepackage{pifont}
\usepackage{palatino}
\usepackage[ pdftex, plainpages = false, pdfpagelabels,
pdfpagelayout = useoutlines,
bookmarks,
bookmarksopen = true,
bookmarksnumbered = true,
breaklinks = true,
linktocpage,
colorlinks = false,
linkcolor = blue,
urlcolor  = blue,
citecolor = red,
anchorcolor = green,
hyperindex = true,
hyperfigures
]{hyperref}
\DeclareGraphicsExtensions{.png, .jpg, .jpeg, .pdf, .gif}
\usepackage[pdftex]{graphicx}
\pdfcompresslevel=9

% A5 settings

\pdfpageheight=210mm
\pdfpagewidth=148mm
\setlength{\marginparsep}{0pt}
% \setlength{\marginparwidth}{0pt}

% DECLARATIONS
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

\def\program#1{\gdef\@program{#1}}
\def\cycle#1{\gdef\@cycle{#1}}
\def\pubyear#1{\gdef\@pubyear{#1}}
\def\mail#1{\gdef\@mail{#1}}

\def\supervisor#1{\gdef\@supervisor{#1}}
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
\def\tutor#1{\gdef\@tutor{#1}}
\def\supervisorinst#1{\gdef\@supervisorinst{#1}}
\def\cosupervisorinst#1{\gdef\@cosupervisorinst{#1}}
\def\tutorinst#1{\gdef\@tutorinst{#1}}

\def\coordinator#1{\gdef\@coordinator{#1}}
\def\coordinatorinst#1{\gdef\@coordinatorinst{#1}}

\def\firstreviewer#1{\gdef\@firstreviewer{#1}}
\def\firstreviewerinst#1{\gdef\@firstreviewerinst{#1}}
\def\secondreviewer#1{\gdef\@secondreviewer{#1}}
\def\secondreviewerinst#1{\gdef\@secondreviewerinst{#1}}
\def\thirdreviewer#1{\gdef\@thirdreviewer{#1}}
\def\thirdreviewerinst#1{\gdef\@thirdreviewerinst{#1}}

\newcommand{\insertblankpage}{
\newpage
{\ \par}
\newpage
}

% TITLE PAGE
% The title page is generated by overloading the \maketitle command

\newcommand{\IMT}{IMT School for Advanced Studies Lucca}

\renewcommand{\maketitle}{%
% \null\vfill
\begin{center}
    {\includegraphics[width=6cm]{backmatter/logo_imt.png} \vspace*{2cm}}\\
    {\huge \bf \@title \par \vspace*{6em}}
    {\large PhD Program in \@program \par \vspace*{1em}}
    {\large \@cycle { Cycle} \par \vspace*{5em}}
    {\large \bf {By} \par \vspace*{1em}}
    {\Large \bf \href{mailto:\@mail}{\@author} \par \vspace*{1em}}
    {\large \bf \@pubyear}
\end{center}
\null\vfill
\insertblankpage
}

% REVIEWERS PAGE
% Some extra comments or customizations should be added in case of more/less than three reviewers and/or no cosupervision

\newcommand{\makereviewerspage}{
\null\vfill
\begin{center}
    {\large \bf The dissertation of \@author { is approved.} \par \vspace*{2em}}
\end{center}
{Program Coordinator: \@coordinator, \@coordinatorinst \par \vspace*{2em}}
{Supervisor: \@supervisor, \@supervisorinst \par \vspace*{2em}}
\ifcsdef{@cosupervisor}{Supervisor: \@cosupervisor, \@cosupervisorinst \par \vspace*{2em}}{}
\ifcsdef{@tutor}{Tutor: \@tutor, \@tutorinst \par \vspace*{4em}}{}

\begin{center}
    {The dissertation of \@author { has been reviewed by:} \par \vspace*{2em}}
\end{center}
{\@firstreviewer, \@firstreviewerinst \par \vspace*{2em}}
\ifcsdef{@secondreviewer}{\@secondreviewer, \@secondreviewerinst \par \vspace*{2em}}{}
\ifcsdef{@thirdreviewer}{\@thirdreviewer, \@thirdreviewerinst \par \vspace*{2em}}{}
\null\vfill
\insertblankpage
}

% DEDICATION

\newenvironment{dedication}{
\begin{center}
    \vspace*{1.5cm}
    {\LARGE }
\end{center}
\vspace{0.5cm}
\begin{quote} \begin{center}
    }
    % content
    {
\end{center} \end{quote}
\insertblankpage
}


% ACKNOWLEDGEMENTS

\newenvironment{acknowledgements}{
\begin{center}
    \vspace*{0.5cm}
    {\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}
    }
    % content
    {
\end{quote}
}

% ABSTRACT

\newenvironment{abstract} {
\begin{center}
    \vspace*{0.5cm}
    {\Large \bfseries  Abstract}
\end{center}
\vspace{0.5cm}
\begin{quote}
    }
    % content
    {
\end{quote}
}

% COPYRIGHT STATEMENT

\newcommand{\makecopyright}{

\pagestyle{empty}
\insertblankpage
\null\vfill
\begin{center}
    \href{http://creativecommons.org/licenses/by-nc-sa/2.5/it/}{\includegraphics[width=2in]{backmatter/cc_logo}}
\end{center}
\begin{center}
    \includegraphics[width=0.3in]{backmatter/by.png}
    \includegraphics[width=0.3in]{backmatter/nc.png}
    \includegraphics[width=0.3in]{backmatter/sa.png}
\end{center}

\begin{quote}
    \small{
    Unless otherwise expressly stated, all original material of whatever nature created by \@author \ and included in this thesis, is licensed under a \href{http://creativecommons.org/licenses/by-nc-sa/2.5/it/}{Creative Commons Attribution Noncommercial Share Alike 2.5 Italy License}.

    Check \href{http://creativecommons.org/licenses/by-nc-sa/2.5/it/}{creativecommons.org/licenses/by-nc-sa/2.5/it/} for the legal code of the full license.

    \href{mailto:\@mail}{Ask the author} about other uses.
    }
\end{quote}

}

% Page numbering

\pagestyle{plain} % show only page numbers
\counterwithout{figure}{chapter} % unbind figures from chapters
\counterwithout{table}{chapter} % unbind tables from chapters