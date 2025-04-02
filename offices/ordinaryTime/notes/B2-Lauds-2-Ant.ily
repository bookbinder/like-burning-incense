\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Sirach_36_1-5,_10-13"
psalmtone = "39"
psalmtonestruct = "43"
keysig = \key gis \minor
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, show us " * "
    the ra -- diance of your mer -- cy.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    cis8[ gis'] fis[ e dis] dis4
    \hideNotes dis16 \unHideNotes %so that I can align the * better
    dis8 \bar "" cis8[ gis'] gis fis e \bar "" e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    cis4~ cis4. b4. s16
    cis\breve*5/16~ cis4 b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    gis4~ gis4.~ gis4. s16 e\breve*5/16 gis2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    e4 cis4. gis4.~ s16 gis\breve*5/16~ gis2
}
