\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "2"
psalmtone = "17"
psalmtonestruct = "44"
psalmnum = ""
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
  Bless those, O  "Lord, * " who have wai -- ted for your co -- ming;
  let your pro -- phets be proved true.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e) \bar "'"
  e8 fis gis[ a] gis fis a a[ gis] gis4 \bar ","
  fis8 gis fis4 e8 e cis[ e] e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 dis cis2 e4~ e4.~ e2. cis4~ cis2~ cis4 gis4
}
tenorNotesAnt = \relative g {
  b4~ b4 gis2 cis4 b4. a4 cis b a4~ a2 e4~ e4 
}
bassNotesAnt = \relative c {
  e4 b4 cis2~ cis4 e4.~ e2. a4 a,2~ a4 e4
}
