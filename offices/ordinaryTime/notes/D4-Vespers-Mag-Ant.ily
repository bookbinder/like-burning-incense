\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "M"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, with the strength of your arm  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    scat -- ter the proud, and lift up the low -- ly.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    ees4 ees8 f ees[ aes] g aes bes4 \bar"'"
    \hideNotes bes16 \unHideNotes   %so that I can align the * better
    aes4 aes8 bes aes[( g f] ees4) \bar "'"
    ees8 f[ ees] des ees f4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    ees1 f2. 
    s16 
    ees2. des2 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes1~ aes2.~
    s16
    aes2.~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c1 des2.
    s16
    c2. bes2 ees
}
