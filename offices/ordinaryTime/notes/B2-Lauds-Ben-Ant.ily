\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "48"
psalmtonestruct = "43"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed be the Lord "*" for he has come to his peo -- ple and set them free.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    aes8 aes g aes f[( ees] des4) 
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \bar "'" des8 ees des des[ aes'] aes8 aes8 \bar "" bes8[ aes]
    aes8 aes g[ aes] f ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    ees2 des4~ des4. s16
    s4 des2 c2~ c4.aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    aes2~ aes4~ aes4. s16
    aes4 f2 ees2 f4.~ f2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    c2 des4 f4. s16
    c4 des2 aes2~ aes4.~ aes2
}
