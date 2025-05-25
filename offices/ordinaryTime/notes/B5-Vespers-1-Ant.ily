\version "2.18.2"
%% include "../../../lbi_defs.ily"
%CAN'T FIND THE PSALM TONE FOR THIS. 
%Is it a variant of 24. There might be a mistake in the original 24 because it sounds a bit off.
%Or maybe it's a variant of 31 or 36
%If none of the above it is the new tone 58 which needs to be harmonized

antiphon = "1"
psalmnum = "Ps_72_2-11"
psalmtone = "46"
psalmtonestruct = "33"
antKeysig = \key cis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    I have made you the light of all na -- tions
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to car -- ry my sal -- va -- tion to the ends of the earth.
}

sopNotesAnt = \relative e' {
    cis8 dis e dis cis gis'4 gis8 \bar "" fis[ gis] \bar "" b[ gis] \bar "" gis4
    \noBreak \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak gis[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak fis
    \allowBreak gis
    \allowBreak cis,[ e]
    \allowBreak dis
    \allowBreak b
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis1^"Check psalmtone." b4 dis4 e4. s16 
    dis\breve*5/16 cis4.~ cis4 a b gis
}
tenorNotesAnt = \relative g {
    e1 dis4 fis gis4.~ s16
    gis\breve*5/16 e4.~ e4 fis2 e4
}
bassNotesAnt = \relative c {
    cis1~ cis2~ cis4. s16
    b\breve*5/16 a4.~ a4 fis gis cis
}
