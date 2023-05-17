\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ezek_36_24-28"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    I will cre -- ate a new heart in you, " * "
    and breathe in -- to you a new spi -- rit.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 fis gis fis[ a] gis b4 gis8 gis fis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 e[( fis] e4) dis8 cis b4 b8 cis[ e] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b4. cis e2 dis4.
    s16
    cis2 r4 s4. cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4. a4. gis4 b4~ b4.
    s16
    gis2. fis4. gis4 a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2.~ e2 b4.
    s16
    cis2. dis4. e4~ e2
}
