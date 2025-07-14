\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Magnificat"
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
  From the no -- ble stem of Jes -- se
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a branch has sprung, and from this branch a beau -- ti -- ful
  flow -- er, rich in scent, has blos -- somed.
}
sopNotesAnt = \relative e' {
  cis8 b cis[ e] e dis cis cis[ b] b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak b8
  \allowBreak e([ fis] e4)
  \allowBreak fis8
  \allowBreak fis4( gis) \bar "'"
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ e]
  \allowBreak e4
  \allowBreak e8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4
  \allowBreak e8[ gis]
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak gis8
  \allowBreak b([ gis] fis[ gis e])
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*12/16 s16 b\breve*5/16~ b\breve*8/16
  cis\breve*6/16~ cis\breve*5/16 e4. dis\breve*5/16 cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
  gis\breve*12/16 s16 e\breve*5/16~ e\breve*8/16~
  e\breve*6/16 a\breve*5/16 gis4. b\breve*5/16 gis\breve*5/16~ gis4
}
bassNotesAnt = \relative c {
  e\breve*12/16 s16 gis,\breve*5/16 e\breve*8/16
  a\breve*6/16~ a\breve*5/16 b4.~ b\breve*5/16 e\breve*5/16~ e4
}
