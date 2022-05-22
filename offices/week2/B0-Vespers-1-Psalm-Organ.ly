\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Ps_119_105-112_(XIV_Nun)")
#(define psalmtone "48")
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
