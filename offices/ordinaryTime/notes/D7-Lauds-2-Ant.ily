\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ezek_36_24-28"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    I will cre -- ate a new heart in you,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and breathe in -- to you a new spi -- rit.
}
sopNotesAnt = \relative e' {
    e8 fis gis fis[ a] gis b4 gis8 gis fis4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak e[( fis] e4)
    \allowBreak dis8
    \allowBreak cis
    \allowBreak b4
    \allowBreak b8
    \allowBreak cis[ e]
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    b4. cis e2 dis4.
    s16
    cis2 r4 s4. cis4 b2
}
tenorNotesAnt = \relative g {
    gis4. a4. gis4 b4~ b4.
    s16
    gis2. fis4. gis4 a gis
}
bassNotesAnt = \relative c {
    e2.~ e2 b4.
    s16
    cis2. dis4. e4~ e2
}
