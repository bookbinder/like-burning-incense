\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_85"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, you have blessed your land;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    you have for -- giv -- en the sins of your peo -- ple.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 b8 cis \bar "" cis[ gis'] a gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 gis gis \bar "" fis gis fis \bar ""
    e[ cis] \bar "" b cis \bar "" dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 cis4. e\breve*5/16
    s16
    cis4.~ cis4 s4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 fis gis4. b\breve*5/16
    s16
    a4. gis4 fis4~ fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4 dis e4.~ e\breve*5/16~
    s16
    e4.~ e4 dis cis2
}
