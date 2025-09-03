\version "2.20.0"

\include "../../lbi_defs.ily"

% get variables from notes file
\include "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/notes/B7-Lauds-3-Ant.ily"

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" toneStruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
