\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "23"
psalmtonestruct = "42"
keysig = \key f \minor
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Do great things for us, O Lord, "*" for you
    are might -- y, and ho -- ly is your name.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 c8 c[ des] c bes \bar "" ees[ f] aes \bar "" aes4( g)
    \hideNotes g16 \unHideNotes %so that I can align the * better
    g8 g aes \bar "" f ees des \bar "" f f ees des c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    r8 s8 s2  ees4.~ ees\breve*7/16 s16 des4. bes2 aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ees4 f2 aes4. bes\breve*7/16~ s16 bes4. f2~ f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    aes4 des2 c4. ees\breve*7/16 s16 bes4. des2 f,4
}
