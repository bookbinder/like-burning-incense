\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_119_145-152_(XIX_Koph)"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, you are near to us,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    and all your ways are true.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 b8 cis \bar "" gis'[ a] gis \bar "" gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 \bar "" fis[ gis] fis \bar "" fis[ e cis] b \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 cis4. b
    s16
    cis4.~ cis4 r4 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 fis e4.~ e4.~
    s16
    e4. fis2 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4 dis e4.~ e4.
    s16
    a,4.~ a4 gis cis
}
