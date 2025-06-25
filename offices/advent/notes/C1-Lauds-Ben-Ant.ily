\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  When John, in pri -- "son, * " heard of the works of Christ, he sent
  two of his dis -- ci -- ples with this ques -- tion: Are you the One
  whose co -- ming was fore -- told, or should we look for a -- no -- ther?
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] cis cis[ b] b4 e8 fis e e fis fis4( gis) \bar "'"
  gis8 \bar "" gis4 gis8[ fis] gis fis e \bar ""
  dis e dis \bar "" fis4 \bar "" e8[ dis cis] \bar "" cis4 \bar ","
  e8 \bar "" fis8 gis \bar "" gis4 gis8 \bar ""
  fis gis e dis \bar "" cis([ e] \bar "" cis4 b) \bar "'"
  b8[ cis] \bar "" e e \bar "" dis([ e] \bar "" fis4) e8 dis
  \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*19/16 dis'\breve*7/16 b4. cis4 gis4.~ gis4.
  b4~ b4.~ b2 a4 s2 b4~ b4~ b4 cis b gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2 gis\breve*5/16 a4( b4.) gis\breve*7/16
  fis4.~ fis4 fis4. e4. dis4 e4.~ e2~ e4
  dis2. e4 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 dis2 e\breve*5/16~ e4~ e4. b\breve*7/16~
  b4. a4 cis4.~ cis4. b4 e,4. gis2 a4 b2. gis4 b a gis cis2
}
