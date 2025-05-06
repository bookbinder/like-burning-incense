\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_123"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Our eyes are fixed in -- ten -- tly on the Lord  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    wai -- ting for his mer -- ci -- ful help.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 e[ dis] cis dis4 e8 gis fis fis fis dis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    e8 dis cis dis e4 e8 e e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis4~ gis4. b4. cis2 b4
    s16
    gis2 cis2 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4~ e4. fis e2 fis4
    s16
    e2 gis2~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4~ cis4. b~ b2~ b4
    s16
    cis2~ cis gis
}
