\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
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
  If you loved me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you would sure -- ly be glad that I am go -- ing
  to the Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 dis[ e] e[ dis] dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ e fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*9/16 s16 cis\breve*5/16 s
  dis2. cis4~ 4 s4
}
tenorNotesAnt = \relative g {
  e2 fis\breve*9/16 s16 gis\breve*5/16 b~
  2. gis4~ 2
}
bassNotesAnt = \relative c {
  cis2 b\breve*9/16 s16 e\breve*5/16 dis
  b2. cis4 gis2
}
