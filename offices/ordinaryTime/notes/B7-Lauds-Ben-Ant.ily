\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "50"
psalmtonestruct = "33"
keysig = \key f \minor
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, guide our feet  " * "
    in -- to the way of peace.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    f8[ aes] g[ aes] bes bes4
    \hideNotes bes16 \unHideNotes %so that I can align the * better
    aes8 g f ees[( f] g4) g8 f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    c4 f\breve*5/16 s16
    bes,4. ees\breve*5/16 c4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    aes4 bes\breve*5/16~ s16
    bes4.~ bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    f4 des\breve*5/16~ s16
    des4. c\breve*5/16 f4
}
