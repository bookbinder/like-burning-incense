\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "45"
antKeysig = \key cis \minor
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
  The child Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  re -- mained in Je -- ru -- sa -- lem, and his pa -- rents
  did not know it. They thought he was in the group of
  tra -- ve -- lers and looked for him a -- mong their
  re -- la -- tives and friends.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "|"
  \allowBreak r8
  \allowBreak dis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*9/16 s16 cis4 b2 cis2~
  cis4 b2~ b4 cis2.~ cis4.~ cis\breve*5/16
  b4.~ b4~ b4. b2 gis2
}
tenorNotesAnt = \relative g {
  e2 fis\breve*9/16 s16 e4 fis2 gis2~
  gis4~ gis2~ gis4~ gis2. e4.~ e\breve*5/16
  dis4. gis4 fis4. dis2 e2
}
bassNotesAnt = \relative c {
  cis2 b\breve*9/16~ s16 b4~ b2 e2
  cis4 gis2~ gis4 cis2.~ cis4. a\breve*5/16
  b4.~ b4~ b4.~ b2 cis2
}
