\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "50"
psalmtonestruct = "33"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Through the ten -- der com -- pas -- sion of our God   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the dawn from on high shall break u -- pon us.
}

sopNotesAnt = \relative e' {
    f8 g aes g f g f ees f \bar "" g[( aes] bes4)
    \noBreak \hideNotes bes16 \unHideNotes %so that I can align the * better
    \allowBreak bes8
    \allowBreak c[ bes]
    \allowBreak aes
    \allowBreak g
    \allowBreak g[ bes]
    \allowBreak bes
    \allowBreak aes
    \allowBreak g
    \allowBreak f4
    \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*9/16 f\breve*5/16 s16
    ees2 f4. des4 c2
}
tenorNotesAnt = \relative g {
    aes\breve*9/16~ aes\breve*5/16 s16
    aes2~ aes4. bes4~ bes aes
}
bassNotesAnt = \relative c {
    f\breve*9/16 des\breve*5/16 s16
    aes2 des4. bes4 f'2
}
