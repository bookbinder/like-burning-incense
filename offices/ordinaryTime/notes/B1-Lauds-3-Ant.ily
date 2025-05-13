\version "2.18.2"
%% include "../../../lbi_defs.ily"

antKeysig = \key e \major
antiphon = "3"
psalmnum = "Ps_150"
psalmtone = "11"
psalmtonestruct = "33"
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise the Lord 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in his in -- fi -- nite great -- ness, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    gis8[ a] gis \bar "" fis[( gis] a4)
    \hideNotes a16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak a
    \allowBreak b
    \allowBreak cis
    \allowBreak b
    \allowBreak a
    \allowBreak gis
    \allowBreak \breathe
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak e4
    e4 \bar "||"
}
altoNotesAnt = \relative c' {
    e4.~ e2~  s16 e4 dis4. e4. cis4 b2
}
tenorNotesAnt = \relative g {
    b4. cis2 s16 b4~ b2. a4~ a gis \bar "||"
}
bassNotesAnt = \relative f {
    e4.~ e2~ s16 e4 gis2. a4 e2
}
