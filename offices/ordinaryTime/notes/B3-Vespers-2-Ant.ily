\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_49_14-21"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Store up for your -- selves \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    trea -- sure in heav -- en, says the Lord.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    aes8 aes f ges aes4
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \bar "" aes8[ bes] aes bes ces[ bes aes] aes4 \bar "'"
     ges8[ ees f] \allowBreak ees8 \allowBreak
    ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    des2. s16 ees\breve*9/16 ces2 aes
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    f2. s16 ges\breve*9/16~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    \keysig
    \global
    des2. s16 ces\breve*9/16 aes2 des
}
