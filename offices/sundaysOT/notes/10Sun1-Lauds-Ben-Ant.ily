\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "B"
psalmtone = "70"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Who -- e -- ver does the will of "God, * "
    he is my bro -- ther, and my sis -- ter, and my mo -- ther.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 e8 fis[ gis] gis fis gis b[ cis] b gis4 \bar "'" e4 e8 gis \bar ""
    fis e cis e fis e e cis \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*7/16 e4. b4~ b2 cis\breve*8/16 a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*7/16~ gis4. e4~ e2 e\breve*8/16~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*7/16~ e4.~ e4 gis,2 a\breve*8/16 e2
}
