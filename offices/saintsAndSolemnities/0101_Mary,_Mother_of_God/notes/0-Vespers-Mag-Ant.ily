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
  In his great love for us,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  God sent his Son in the like -- ness of our sin -- ful na -- ture,
  born of a wo -- man and sub -- ject to the law,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak gis8
  \allowBreak gis[ b]
  \allowBreak cis4
  \allowBreak b8[ cis]
  \allowBreak b
  \allowBreak gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak gis
  \allowBreak cis,([ e] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis([ fis] gis4)
  \allowBreak fis8
  \allowBreak e[ cis]
  \allowBreak cis4 \bar ","
  \allowBreak gis'8[ b]
  \allowBreak gis
  \allowBreak b
  \allowBreak cis[ b gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak e[ cis]
  \allowBreak e~([ e~] e[ cis])
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*9/16~ e4 s16 dis\breve*5/16 cis2.~ 4.~
  4 dis\breve*5/16 a4 gis e'\breve*9/16 b2~
  b\breve*5/16 gis4 a2 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 b4~ s16 b\breve*5/16 e,2. a4.~
  a4 gis\breve*5/16 fis4 e~ e\breve*9/16~ e2
  dis\breve*5/16 e4 fis2 e4
}
bassNotesAnt = \relative c {
  e\breve*9/16~ e4 s16 b\breve*5/16 a2.~ a4.~
  a4 b\breve*5/16 cis2 e,\breve*9/16~ e2
  b'\breve*5/16 cis4~ cis2~ 4
}
