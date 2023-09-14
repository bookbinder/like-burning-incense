\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbi_cantor_office}
\LoadClass{book}

\RequirePackage[paperheight=8.5in, paperwidth=5.5in,bottom=.3in,top=.2in,inner=.4in,outer=.3in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphics}
\RequirePackage{libertineRoman}

\setcounter{secnumdepth}{0}
\newcommand{\betweenLilyPondSystem}[1]{\vspace{0mm}\linebreak} 
\raggedbottom
\raggedright

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
\titlespacing*{\section}{0pt}{10pt}{0pt}

\pagestyle{empty}

\newcommand{\topheader}[2]{%
    \noindent\fbox{\large\bfseries #1}\hfill\fbox{\large\bfseries #2}}
\newcommand{\inlily}[1]{\lilypondfile[line-width=4.4\in]{#1}}
\newcommand{\spacer}{\vspace{1.5\baselineskip}}
\newcommand{\smallspacer}{\vspace{0.5\baselineskip}}
