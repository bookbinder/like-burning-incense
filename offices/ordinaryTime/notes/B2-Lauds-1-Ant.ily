\version "2.18.2"
%% include "../../../lbi_defs.ily"

antKeysig = \key f \minor
psalmnum = "Ps_42"
psalmtone = "50"
psalmtonestruct = "33"
antiphon = "1"
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    When will I come to the end of my pil -- grim -- age 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and en -- ter the pres -- ence of God?
}

sopNotesAnt = \relative e' {
    f4 ees8 f g aes bes \bar "" bes4 aes8 g \bar "" g[ aes] g g4
    \noBreak \hideNotes a16 \unHideNotes %so that I can align the * better
    \allowBreak g8
    \allowBreak aes
    \allowBreak g
    \allowBreak f
    \allowBreak ees[( f] g4)
    \allowBreak g8
    \allowBreak g
    \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*7/16 f2~ f4. ees4. s16
    c4. ees2~ ees4 c4
}
tenorNotesAnt = \relative g {
    aes\breve*7/16 des2 bes2. s16
    aes4. g2~ g4 aes4
}
bassNotesAnt = \relative c' {
    aes\breve*7/16 des,2 ees2. s16
    f4. c2~ c4 f,4
}
