\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Sirach_36_1-5,_10-13"
psalmtone = "39"
psalmtonestruct = "43"
antKeysig = \key gis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, show us
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the ra -- diance of your mer -- cy.
}

sopNotesAnt = \relative e' {
    cis8[ gis'] fis[ e dis] dis4
    \hideNotes dis16 \unHideNotes %so that I can align the * better
    \allowBreak dis8
    \allowBreak cis8[ gis']
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak e[ dis]
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    cis4~ cis4. b4. s16
    cis\breve*5/16~ cis4 b
}
tenorNotesAnt = \relative g {
    gis4~ gis4.~ gis4. s16 e\breve*5/16 gis2
}
bassNotesAnt = \relative c {
    e4 cis4. gis4.~ s16 gis\breve*5/16~ gis2
}
