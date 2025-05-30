\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_65"
psalmtone = "40"
psalmtonestruct = "43"
antKeysig = \key gis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c

text = \lyricmode {
    \set includeGraceNotes = ##t
    To you, O God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    our praise is due in Zi -- on.
}

sopNotesAnt = \relative e' {
    r8 dis8 dis[ fis] fis \bar "" gis[( fis ais] gis4)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak gis[ ais]
    \allowBreak gis
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak dis4
    \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \hideNotes dis8~ \unHideNotes dis4. e2. s16
    cis2.~ cis4 b
}
tenorNotesAnt = \relative g {
    b4~ b4.~ b2. s16 gis2.~ gis2
}
bassNotesAnt = \relative g {
    gis4 fis4. e2.~ s16 e4. cis 4. gis2
}
