\ProvidesClass{TREX}
\LoadClass[a4paper,twoside,final,12pt,headings=small]{report}

\usepackage[showframe,paper=a4paper,
top=1.18in,bottom=1in,right=0.75in,left=0.75in]{geometry}% http://ctan.org/pkg/geometry
\usepackage[utf8]{inputenc}
\usepackage{lastpage}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{amsmath}
\usepackage{amssymb}

\usepackage[printonlyused,nohyperlinks]{acronym}


\usepackage[pdftex,hyperfigures,hyperindex,bookmarksnumbered,colorlinks, bookmarks, breaklinks, linktocpage,citecolor=blue,urlcolor=blue,linkcolor=black,pdftitle={TREX},pdfauthor={TREX}]{hyperref}

%\setlength{\headheight}{1cm}
%\setlength{\footskip}{18mm}
%\addtolength{\textheight}{-\footskip}


%%--Set the section number depth.                                                             
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{4}
\setcounter{page}{2}

\bibliographystyle{IEEEtran}
\sloppy

%%-----------------------------------------------
%%-- Float related environments and commands.
%%-----------------------------------------------
%%--Modify behavior of the figure and table environment.
\def\fps@figure{hbt}
\def\fnum@figure{\textbf{\figurename~\thefigure}}
\def\fps@table{htb}
\def\fnum@table{\textbf{\tablename~\thetable}}
\def\mathfigure{\thesisfiguretrue\figure}
\def\endmathfigure{\endfigure\thesisfigurefalse}

% --------------------------------------------
% Headers
% --------------------------------------------
\pagestyle{fancyplain}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}

\makeatletter
\makeindex
\makeglossary
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
\newcommand{\indic}{\mathtt{1}\!\!\mathtt{l}}
\newcommand{\proba}{\mathbb{P}}
\newcommand{\esper}{\mathbb{E}}
\newcommand{\Nats}{I\!\!N}
\newcommand{\nats}{I\!\!N}
\newcommand{\Reals}{I\!\!R}
\newcommand{\reals}{I\!\!R}
\newcommand{\espalm}{\mathbb{E}_N^{o}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Floating figures
\renewcommand\floatpagefraction{.9}
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
\renewcommand\textfraction{.1}
\setcounter{totalnumber}{50}
\setcounter{topnumber}{50}
\setcounter{bottomnumber}{50}

\endinput

%% --The \tableofcontents.
\renewcommand\tableofcontents{%
  \renewcommand{\contentsname}{Table of Contents}
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \oldchapter*{\contentsname
    \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi}

%% --The \listoffigures command.
\renewcommand\listoffigures{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \oldchapter*{\listfigurename
    \@mkboth{\uppercase{\listfigurename}}{\uppercase{\listfigurename}}}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi}

%% --The \listoftables command.
\renewcommand\listoftables{%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse%
  \fi%
  \oldchapter*{\listtablename%
    \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi}

\endinput

