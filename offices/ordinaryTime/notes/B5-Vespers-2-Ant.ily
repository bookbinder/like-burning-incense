\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_72_12-19"
psalmtone = "40"
psalmtonestruct = "43"
keysig = \key gis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord will save the chil -- dren of the poor, " * " 
    and res -- cue them from slav -- ery.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 dis8 dis[ fis] fis \bar "" gis4 gis8 fis[ gis] ais gis fis \bar "" gis4
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 \bar "" fis[ gis] \bar "" fis fis e \bar "" dis4 dis \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r4 cis4. dis cis dis4 e4. s16
    \parenthesize b4. cis4~ cis
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    b4 ais4. b4. ais4. b4~ b4.~ s16
    b4. gis4~ gis2
}
bassNotesAnt = \relative g {
    \keysig
    \global
    gis4~ gis4.~ gis4.~ gis4. fis4 e4. s16
    dis4. e4 gis,2
}
