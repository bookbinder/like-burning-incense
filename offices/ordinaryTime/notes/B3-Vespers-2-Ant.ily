\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_49_14-21"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Store up for your -- selves "*" trea -- sure in heav -- en, says the Lord.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    aes8 aes f ges aes4
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \bar "" aes8[ bes] aes bes ces[ bes aes] aes \bar "'"
    \bar "" ges[ ees f] ees8 ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    des2. s16 ees\breve*8/16 ces2 aes
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    f2. s16 ges\breve*8/16~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    des2. s16 ces\breve*8/16 aes2 des
}
