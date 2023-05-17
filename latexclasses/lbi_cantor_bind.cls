\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbi_cantor_bind}
\LoadClass{book}

\RequirePackage[paperheight=8.5in, paperwidth=5.5in,bottom=.6in,top=.2in,inner=.2in,outer=.2in]{geometry}
\usepackage{pdfpages}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[CE]{\thepage}
\fancyfoot[CO]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{14.0pt}
\setcounter{secnumdepth}{-1}
\setcounter{tocdepth}{1}

\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\sffamily\Large\bfseries\centering}
  {\chaptertitlename\ \thechapter}{0pt}{\huge}

\titleformat{\section}
  {\normalfont\sffamily\Large\bfseries\centering}
  {\thesection}{1em}{}

\titleformat{\subsection}
  {\normalfont\sffamily\large\bfseries}
  {\thesection}{1em}{}

\titlespacing*{\chapter}{0pt}{30pt}{20pt}
