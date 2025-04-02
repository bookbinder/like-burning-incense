\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "54"
psalmtonestruct = "42"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus rose ear -- ly in the mor -- "ning * "
    and went out to a place of so -- li -- tude, and there he prayed.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis4 gis8 fis[ gis] \bar "" b[ gis] gis4 fis8 e \bar ""
    fis[ e cis] cis4 \bar ""
    cis8 \bar "" cis[ e] e4 cis8 e \bar "" fis[ gis]
    \bar "" fis \bar "" b b8 ais4 \bar "'"
    ais8 \bar "" b ais \bar "" gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    dis\breve*5/16~ dis2. cis4.~ cis gis2. b4.
    cis\breve*5/16~ cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b\breve*5/16 cis4 b2 gis4. e~ e2. dis4.
    fis\breve*5/16~ fis4 dis
}
bassNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*5/16~ gis2. cis,\breve*6/16~ cis2. b4.
    fis\breve*5/16 dis4 gis
}
