\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "21"
psalmtonestruct = "33"
antKeysig = \key aes \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, with the strength of your arm  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    scat -- ter the proud, and lift up the low -- ly.
}

sopNotesAnt = \relative e' {
    ees4 ees8 f ees[ aes] g aes \bar "" bes4
    \hideNotes bes16 \unHideNotes %so that I can align the * better
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak bes
    \allowBreak aes[( g f] ees4)
    \allowBreak ees8
    \allowBreak f[ ees]
    \allowBreak des
    \allowBreak ees
    \allowBreak f4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    ees1 f2. s16 ees2.
    des2 bes
}
tenorNotesAnt = \relative g {
    aes1~ aes2.~ s16
    aes2.~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
    c1 des2. s16
    c2. bes2 ees
}
