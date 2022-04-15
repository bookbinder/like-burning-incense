\version "2.20.0"
\include "../lbi_defs.ily"

#(define psalmnum "Ps_084")
#(define psalmtone "48")
#(define psalmtonestruct "43")
% transposition interval for psalm tone:
tfirst = a
tsecond = a

% -----shouldn't need to change what's below------

% notes for the psalm tone:
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")

% psalm/canticle text
\include #(string-append "../psalms/" psalmnum "/" psalmtonestruct "/" psalmnum ".ily")

% psalm/canticle score
\include #(string-append "../psalms/" psalmnum "/" psalmnum ".ily")
