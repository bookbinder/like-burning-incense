\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Isa_26_1-4,_7-9,_12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My soul has yearned for you in the \ll "night,  * " _
    and as mor -- ning breaks I watch for your co -- ming.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 f8 aes[ g] f g[ aes] g f[ c'] bes aes aes4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 g \bar ""
    g[ aes] g g4 aes8 \bar "" bes[( c] bes4) aes8 g aes[ f] f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*5/16 ees4. f2 ees2.~
    s16
    ees2. f c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*5/16 bes4. c2~ c2.
    s16
    bes2.~ bes~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*5/16 ees4. aes2 c,2.
    s16
    ees2. des f2
}
