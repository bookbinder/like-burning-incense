\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Exod_15_1-4a,_8-13,_17-18")
#(define psalmtone "37")
#(define psalmtonestruct "33")

% transposition interval for psalm tone:
frompitch = a
topitch = aes

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" psalmtonestruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
