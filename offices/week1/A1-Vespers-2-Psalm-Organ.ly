\version "2.20.0"

\include "../../lbi_defs.ily"
#(define psalmnum "Ps_114")
#(define psalmtone "55")
#(define psalmtonestruct "32")

% transposition interval for psalm tone:
frompitch = a
topitch = bes

% notes for the psalm tone:
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../../psalms/" psalmnum "/" psalmtonestruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../../psalms/" psalmnum "/" psalmnum ".ily")

\version "2.20.0"

\include "../../lbi_defs.ily"
\include "notes/A1-Vespers-2-Ant.ily"
\include #(string-append "../../psalmtones/notes/" psalmtone "-notes.ily")


