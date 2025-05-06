\version "2.18.2"
%% include "../../../lbi_defs.ily"

keysig = \key e \major
antiphon = "3"
psalmnum = "Ps_150"
psalmtone = "11"
psalmtonestruct = "33"
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise the Lord \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    in his in -- fi -- nite great -- ness, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    gis8[ a] gis \bar "" fis[( gis] a4)
    \hideNotes a16 \unHideNotes %so that I can align the * better
    gis8 a \bar "" b cis b \bar "" a gis \breathe
    fis \bar "" fis[ gis] \bar "" e4 e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    e4.~ e2~  s16 e4 dis4. e4. cis4 b2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    b4. cis2 s16 b4~ b2. a4~ a gis \bar "||"
}
bassNotesAnt = \relative f {
    \keysig
    \global
    e4.~ e2~ s16 e4 gis2. a4 e2
}
