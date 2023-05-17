\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbi_organ_bind}[2014/08/16 For multiple organ offices]
\LoadClass{book}

\usepackage[bottom=.7in,top=.8in,inner=.6in,outer=.6in]{geometry}
\usepackage{pdfpages}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[CE]{\large\bfseries\sffamily\leftmark}
\fancyhead[CO]{\large\bfseries\sffamily\rightmark}
\fancyhead[LE]{\large\sffamily\thepage}
\fancyhead[RO]{\large\sffamily\thepage}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headsep}{25pt}
\setlength{\footskip}{20pt}
\setlength{\headheight}{14.0pt}
\setcounter{secnumdepth}{-1}
\setcounter{tocdepth}{1}

\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\sffamily\Large\bfseries}
  {\chaptertitlename\ \thechapter}{0pt}{\huge}

\titleformat{\section}
  {\normalfont\sffamily\Large\bfseries}
  {\thesection}{1em}{}

\titleformat{\subsection}
  {\normalfont\sffamily\large\bfseries}
  {\thesection}{1em}{}

\titlespacing*{\chapter}{0pt}{30pt}{20pt}

%Start chapters on even pages
\makeatletter
\renewcommand*\cleardoublepage{\clearpage\if@twoside
  \ifodd\c@page \hbox{}\newpage\if@twocolumn\hbox{}%
  \newpage\fi\fi\fi}
\makeatother
