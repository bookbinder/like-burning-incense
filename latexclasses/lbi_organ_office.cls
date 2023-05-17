\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbi_organ_office}
\LoadClass{book}

\RequirePackage[bottom=.7in,top=.8in,inner=.8in,outer=.5in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphics}
\RequirePackage{libertineRoman}

\newcommand{\betweenLilyPondSystem}[1]{\vspace{4mm}\linebreak} 
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
