\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_122"
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
  Je -- sus said to Ma -- ry:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Wo -- man, why are you wee -- ping? Whom do you seek?
}
sopNotesAnt = \relative e' {
  e4 e8 cis[ e] e e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak cis8[ gis']
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. b2 s16 cis2~ cis2 b2 cis2 b4
}
tenorNotesAnt = \relative g {
  e2. fis2 s16 gis2~ gis2~ gis2 e2 gis4
}
bassNotesAnt = \relative c {
  cis2. b2 s16 e2 cis gis~ gis~ gis4
}
