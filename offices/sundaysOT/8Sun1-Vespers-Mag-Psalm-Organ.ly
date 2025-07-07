\version "2.20.0"

\include "../../lbi_defs.ily"

% get variables from the notes file
\include "notes/8Sun1-Vespers-Mag-Ant.ily"

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" toneStruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
%% update
%% update
