\version "2.20.0"

\include "../../lbi_defs.ily"

% get variables from the notes file
\include "notes/A0-Vespers-1-Ant.ily"

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtoneG "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" psalmtoneG "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum "-G.ily")
%%
%%
%%
%%
%%
%%
%%
%%
%%
