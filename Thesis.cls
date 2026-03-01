% Thesis.cls  (SMTC thesis format aligned)
\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{Thesis}[2026/02/25 v1.0 SMTC-aligned]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% 11pt required by the regulation
\LoadClass[11pt]{report}

\makeatletter

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

% =========================
% Fonts (Times New Roman)
% =========================
% Use XeLaTeX or LuaLaTeX
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

% Packages
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{rotating}
\RequirePackage{listings}
\RequirePackage[labelsep=quad,indention=10pt]{caption}
\RequirePackage{subcaption}
\RequirePackage[para]{threeparttable}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{algcompatible}
\RequirePackage{float}
\RequirePackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\RequirePackage{siunitx}
\RequirePackage{mathrsfs}
\RequirePackage{blindtext}
\RequirePackage{titlepic}
\RequirePackage{longtable}
\RequirePackage[titles]{tocloft}
\RequirePackage{lscape}
\RequirePackage{adjustbox}
\RequirePackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\RequirePackage[nohyperlinks]{acronym}

% =========================
% Paragraph settings
% =========================
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{6pt plus 1pt minus 1pt} % ~ "догол мөрний өмнө 6pt"

\tolerance=1000
\emergencystretch=3em
\hyphenpenalty=1000
\widowpenalty=10000
\clubpenalty=10000

% =========================
% Margins (Left 2.5cm, others 2.0cm)
% =========================
\RequirePackage{vmargin}
\setmarginsrb{25mm}{20mm}{20mm}{20mm}{20pt}{0.25in}{9pt}{0.3in}

% Line spacing: Single
\setstretch{1.0}

% =========================
% Headings
% =========================
% Chapter: Extra Large
\titlespacing{\chapter}{0pt}{-70pt}{1pt}
\titleformat{\chapter}[block]
  {\bfseries\huge} % Increased from \Large to \huge
  {\textsc{\thechapter.}}{0.5em}{}

% Section: Large
\titlespacing{\section}{0pt}{0pt}{1pt}
\titleformat{\section}[block]
  {\bfseries\Large}    % Increased from \large to \Large
  {\thesection.}{0.5em}{}

% Subsection: Medium-Large
\titlespacing{\subsection}{0pt}{0pt}{1pt}
\titleformat{\subsection}[block]
  {\bfseries\large}    % Increased from \normalsize to \large
  {\thesubsection.}{0.5em}{}

% Subsubsection: Standard Bold
\titlespacing{\subsubsection}{0pt}{0pt}{1pt}
\titleformat{\subsubsection}[block]
  {\bfseries\normalsize}
  {\thesubsubsection.}{0.5em}{}

% =========================
% Footer / page style
% =========================
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\normalsize \thepage}

% =========================
% Custom TOC/List commands
% =========================
\newcommand\addtotoc[1]{\addcontentsline{toc}{chapter}{#1}}

\renewcommand\tableofcontents{%
    \addtotoc{Гарчиг}%
    \btypeout{Table of Contents}%
    \begin{spacing}{1}%
    \chapter*{\contentsname}%
    \@starttoc{toc}%
    \cleardoublepage%
    \end{spacing}%
}

\newcommand\listoftab{%
    \btypeout{Хүснэгтийн жагсаалт}%
    \addtotoc{Хүснэгтийн жагсаалт}%
    \begin{spacing}{1}%
    \chapter*{Хүснэгтийн жагсаалт}%
    \@starttoc{lot}%
    \end{spacing}%
}

\newcommand\listoffig{%
    \btypeout{Зургийн жагсаалт}%
    \addtotoc{Зургийн жагсаалт}%
    \begin{spacing}{1}%
    \chapter*{Зургийн жагсаалт}%
    \@starttoc{lof}%
    \end{spacing}%
}

\renewcommand{\cftfigpresnum}{Зураг \ }
\renewcommand{\cfttabpresnum}{Хүснэгт \ }
\setlength{\cftfignumwidth}{5.2em}
\setlength{\cfttabnumwidth}{6.2em}

\makeatother