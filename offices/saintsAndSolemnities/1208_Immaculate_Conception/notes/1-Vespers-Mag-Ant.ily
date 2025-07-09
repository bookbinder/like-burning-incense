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
  Hail, Ma -- ry, full of grace;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord is with you; bles -- sed are you a -- mong wo -- men, and
  bles -- sed is the fruit of your womb, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 b8 cis cis[ gis'] a gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis
  \allowBreak cis4 \bar ","
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak dis[ fis]
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e[ dis]
  \allowBreak cis[ b] \bar "'"
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  b2 a4. b4. s16 cis4. s4. dis4.~
  dis\breve*5/16~ dis\breve*5/16 cis\breve*5/16~ cis4.~ cis4 s4. b4 gis2
}
tenorNotesAnt = \relative g {
  e2~ e4.~ e4.~ s16 e4. a4. fis4.~
  fis\breve*5/16 b\breve*5/16 gis\breve*5/16 a4. gis4 fis4.~ fis4~ fis4 e
}
bassNotesAnt = \relative c {
  gis2 a4. e4. s16 a2. b4.~
  b\breve*5/16~ b cis\breve*5/16~ cis4. cis4 dis4. b4 cis2
}
