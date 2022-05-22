\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Ps_117")
#(define psalmtone "59")
#(define psalmtonestruct "43")

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
\include "notes/A7-Lauds-3-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


