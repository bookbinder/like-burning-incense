\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The king -- dom of hea -- ven is like a mus -- tard "seed, * "
    the small -- est of all seeds; yet when full -- grown it is the
    lar -- gest of shrubs.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 e8 fis gis fis gis fis e gis b cis b b4 \bar "'"
    b8 gis a gis \bar "" fis[ gis fis] e4 r4 \bar "|"
    e8[ fis] e dis[ e] cis4( b) \bar "'" e8 fis gis cis4 b8 gis \bar "" fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*10/16 e\breve*8/16 cis4. gis2 cis\breve*12/16 e2 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*10/16 e\breve*8/16~ e4.~ e2 gis\breve*5/16~ gis\breve*7/16 a2~ a4 gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*10/16 gis,\breve*8/16 a4. e2 cis'\breve*5/16 e\breve*7/16~ e2~ e
}
