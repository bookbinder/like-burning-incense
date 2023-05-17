\version "2.18.2"
\include "../../../lbi_defs.ily"
%CAN'T FIND THE PSALM TONE FOR THIS. 
%Is it a variant of 24. There might be a mistake in the original 24 because it sounds a bit off.
%Or maybe it's a variant of 31 or 36
%If none of the above it is the new tone 58 which needs to be harmonized

antiphon = "1"
psalmnum = "Ps_72_2-11"
psalmtone = "46"
psalmtonestruct = "33"
keysig = \key cis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    I have made you the light of all na -- tions  "*" 
    to car -- ry my sal -- va -- tion to the ends of the earth.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    cis8 dis e dis cis gis'4 gis8 \bar "" fis[ gis] \bar "" b[ gis] \bar "" gis4
    \breathe \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 \bar "" gis[ a] gis fis e \bar "" fis4 fis8 fis gis \bar "" cis,[ e] \bar "" dis b cis4  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    gis1 b4 dis4 e4. s16 
    dis\breve*5/16 cis4.~ cis4 a b gis
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    e1 dis4 fis gis4.~ s16
    gis\breve*5/16 e4.~ e4 fis2 e4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    cis1~ cis2~ cis4. s16
    b\breve*5/16 a4.~ a4 fis gis cis
}
