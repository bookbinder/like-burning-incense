\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Eph_1_3-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    God planned in the full -- ness of time  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    to re -- store all things in Christ.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis4 e8[ dis] cis b cis[ gis'] gis gis fis[( gis] fis4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 fis e[ fis] gis4 cis,8 b cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*10/16 cis\breve*8/16
    s16
    gis2~ gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*10/16 fis\breve*8/16~
    s16
    fis4 dis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*10/16 a\breve*8/16
    s16
    cis2~ cis4
}
