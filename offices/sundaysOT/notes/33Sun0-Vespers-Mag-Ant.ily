\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Well done, my good and faith -- ful ser -- "vant, * " 
    you have been trust -- wor -- thy in small things. Now
    share your mas -- ter's joy.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ cis,] cis4 e8 fis[ gis] fis e[ cis] e \bar "" fis4 fis \bar "'"
    fis8 fis fis \bar "" gis[ b] cis b gis \bar "" gis[ fis] fis4 \bar "'"
    e4 \bar "" dis8[ e] fis e dis \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*5/16 cis2. dis\breve*7/16 e\breve*5/16 dis2
    cis4 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16 a4. gis4. b\breve*7/16~ b\breve*5/16~ b2
    gis4 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*5/16~ cis2. b\breve*7/16 e\breve*5/16 b2
    cis4~ cis\breve*5/16~ cis4
}
