\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_67"
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
  The earth has yiel -- ded its fruit;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let the na -- tions be glad and sing for joy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] cis cis4 b8 e fis4( gis)
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s\breve*9/16 s16 cis\breve*7/16~ cis\breve*5/16
  b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 b\breve*9/16 s16 a\breve*7/16 fis\breve*5/16~
  fis4~ fis e
}
bassNotesAnt = \relative c {
  e\breve*9/16~ e\breve*9/16 s16 a\breve*7/16 a,\breve*5/16
  b4 cis2
}
