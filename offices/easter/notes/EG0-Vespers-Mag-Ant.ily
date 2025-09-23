\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
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
  I will not leave you or -- phans;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I am go -- ing now but I will come back to you
  and your hearts will re -- joice, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis[ e] dis e fis[ gis fis] fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e4 \bar ","
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak e4( fis) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s\breve*5/16 s16 e\breve*5/16 cis\breve*10/16~
  cis2~ \breve*9/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 b\breve*5/16 s16 gis\breve*5/16 a\breve*10/16
  gis2 fis\breve*9/16~ 4~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*7/16 dis\breve*5/16 s16 cis\breve*5/16~ \breve*10/16~
  2 a\breve*9/16 b4 cis2
}
