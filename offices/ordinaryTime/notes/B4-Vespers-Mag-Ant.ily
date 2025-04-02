\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "21"
psalmtonestruct = "33"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, with the strength of your arm  "*"
    scat -- ter the proud, and lift up the low -- ly.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    ees4 ees8 f ees[ aes] g aes \bar "" bes4
    \hideNotes bes16 \unHideNotes %so that I can align the * better
    aes4 aes8 bes \bar "" aes[( g f] ees4)
    \bar "" ees8 \bar "" f[ ees] des ees \bar "" f4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    ees1 f2. s16 ees2.
    des2 bes
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes1~ aes2.~ s16
    aes2.~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
    \keysig
    \global
    c1 des2. s16
    c2. bes2 ees
}
