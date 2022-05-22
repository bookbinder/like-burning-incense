\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Ps_110_1-5,_7")
#(define psalmtone "04")
#(define psalmtonestruct "33")

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
\include "notes/A1-Vespers-1-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


