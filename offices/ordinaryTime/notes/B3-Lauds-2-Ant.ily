\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Isa_38_10-14,_17-20"
psalmtone = "11"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, keep us safe "*" all the days of our life.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    e4 fis8 a \bar "" a4( gis)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    fis8 e \bar "" fis[ gis] fis fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    e2~ e2. s16 cis2 b4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    gis4 a b2. s16 a2 gis4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    e2~ e2. s16 e2~ e4
}
