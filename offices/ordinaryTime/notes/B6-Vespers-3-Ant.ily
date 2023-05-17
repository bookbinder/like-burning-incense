\version "2.20.0"
\include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Rev_15_3-4"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    King of all the a -- ges, " * "
    your ways are per -- fect and true.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    aes8[ bes] aes f ges ees[ des] des4  
    \hideNotes des16 \unHideNotes %so that I can align the * better
    des8 ces[ ees] ges f ges ees des4 \bar "||" \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    des\breve*10/16 s16
    ces4. bes aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    f\breve*5/16 aes\breve*5/16 s16
    ges4.~ ges f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    des\breve*5/16 f s16
    ees4. ces des4
}
