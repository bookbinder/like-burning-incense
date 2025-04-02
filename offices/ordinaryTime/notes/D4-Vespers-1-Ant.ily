\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "1"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_139_1-12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, how won -- der -- ful is your wis -- \ll "dom,  * " _
    so far be -- yond my un -- der -- stand -- ing.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8[ b] cis e dis cis dis e fis4 fis \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8[ gis] gis4 fis8 e e dis e dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s1 b2.~
    s16
    b4.~ b2 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*8/16 fis2.
    s16
    e4.~ e4 fis4~ fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*8/16 dis2.
    s16
    e4. gis,4 b cis2
}
