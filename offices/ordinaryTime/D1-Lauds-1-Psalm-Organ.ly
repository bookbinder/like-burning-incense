\version "2.20.0"

\include "../../lbi_defs.ily"

% get variables from the notes file
\include "notes/D1-Lauds-1-Ant.ily"

% #(set-global-staff-size 14)

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" toneStruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
