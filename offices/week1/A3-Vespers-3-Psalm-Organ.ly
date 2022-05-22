\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Rev_04_11_and_5_9,_10,_12")
#(define psalmtone "45")
#(define psalmtonestruct "42")

% transposition interval for psalm tone:
frompitch = a
topitch = gis

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" psalmtonestruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")
