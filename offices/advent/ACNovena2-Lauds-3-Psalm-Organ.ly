\version "2.24.0"

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"

% get variables from the notes file
\include "/home/ryan/scores/like-burning-incense/offices/advent/notes/ACNovena2-Lauds-3-Ant.ily"

% notes for the psalm tone:
\include #(string-append "/home/ryan/scores/like-burning-incense/psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "/home/ryan/scores/like-burning-incense/psalms/" psalmnum "/" toneStruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "/home/ryan/scores/like-burning-incense/psalms/" psalmnum "/" psalmnum ".ily")

%%