\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_97"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is king, "*"
    let the earth re -- joice.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 des8 ges[ f] ges aes[( bes ces bes] aes4)
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    ges8 ges f[ ges] ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    r8 \hideNotes des8~ \unHideNotes des4. ees2. s16
    bes4 ces4. aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ges4~ ges4.~ ges2.~ s16
    ges4~ ges4. f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    bes4~ bes4. ces2. s16 ees4 aes,4. des4
}
