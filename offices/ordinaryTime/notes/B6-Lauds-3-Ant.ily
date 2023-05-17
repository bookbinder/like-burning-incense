\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_147_12-20"
psalmtone = "11"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    O praise the Lord, " * " Je -- ru -- sa -- lem! 
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 e8 fis[ gis] fis a[(gis ] fis4) 
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    fis8 fis[ gis] fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    b4~ b4. a4( cis4.~) s16
    cis4. b4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    gis4 fis4. e4~ e4. s16
    fis4. gis4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    e4 dis4. cis4( a4.~) s16
    a4. e'4
}
