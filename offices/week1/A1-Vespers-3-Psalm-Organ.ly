\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Rev_19_1-7")
#(define psalmtone "55")
#(define psalmtonestruct "special")

% transposition interval for psalm tone:
frompitch = a
topitch = a

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" psalmtonestruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/A1-Vespers-3-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


