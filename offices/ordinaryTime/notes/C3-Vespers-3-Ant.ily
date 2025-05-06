\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, you have made us a king -- dom  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    and priests for God our Fa -- ther.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 b8 cis cis[ gis'] fis e fis[ gis fis] fis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 gis[ fis] e \bar "" fis4 \bar "" e8 \bar "" dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s1 s16 s2. e4. cis a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 fis gis2 b2.
    s16
    gis4. a fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4 dis e2 dis2.
    s16
    cis2.~ cis2
}
