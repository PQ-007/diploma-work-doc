\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{Thesis}[2022/04/12 v0.1 testclass]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

\usepackage{setspace}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage[labelsep=quad,indention=10pt]{caption}
\usepackage{subcaption}
\usepackage[para]{threeparttable}
\usepackage{algorithm}
\usepackage{algpseudocode}
\usepackage{algcompatible}
\usepackage{float}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\usepackage{siunitx}
\usepackage{mathrsfs}
\usepackage{blindtext}
\usepackage{titlepic}
\usepackage{lmodern}
\usepackage{longtable}
\usepackage[titles]{tocloft}
\usepackage{lscape}
\usepackage{adjustbox}
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\usepackage[nohyperlinks]{acronym}

\setlength{\parindent}{1.25cm}
\setlength{\parskip}{6pt plus1pt minus1pt}

\tolerance=1000
\emergencystretch=3em
\hyphenpenalty=1000
\widowpenalty=10000
\clubpenalty=10000

\usepackage{vmargin}
\setmarginsrb{25mm}{20mm}{20mm}{20mm}{20pt}{0.25in}{9pt}{0.3in}
\setstretch{1.0}

\titlespacing{\chapter}{0pt}{-70pt}{1pt}
\titleformat{\chapter}[block]{\bfseries}{\textsc{\thechapter.}}{0.5em}{}
\titlespacing{\section}{0pt}{0pt}{1pt}
\titleformat{\section}[block]{\bfseries}{\thesection.}{0.5em}{}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\normalsize \thepage}

% Custom TOC/List commands
\newcommand\addtotoc[1]{\addcontentsline{toc}{chapter}{#1}}

\renewcommand\tableofcontents{
    \addtotoc{Гарчиг}
    \btypeout{Table of Contents}
    \begin{spacing}{1}
    \chapter*{\contentsname}
    \@starttoc{toc}
    \cleardoublepage
    \end{spacing}
}

\newcommand\listoftab{
    \btypeout{Хүснэгтийн жагсаалт}
    \addtotoc{Хүснэгтийн жагсаалт}
    \begin{spacing}{1}
    \chapter*{Хүснэгтийн жагсаалт}
    \@starttoc{lot}
    \end{spacing}
}

\newcommand\listoffig{
    \btypeout{Зургийн жагсаалт}
    \addtotoc{Зургийн жагсаалт}
    \begin{spacing}{1}
    \chapter*{Зургийн жагсаалт}
    \@starttoc{lof}
    \end{spacing}
}

\renewcommand{\cftfigpresnum}{Зураг \ }
\renewcommand{\cfttabpresnum}{Хүснэгт \ }