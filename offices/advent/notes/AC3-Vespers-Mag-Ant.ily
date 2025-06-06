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
  Be -- fore Ma -- ry and Jo -- seph had come to -- ge -- ther,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  they learned that Ma -- ry was with child by the pow -- er of
  the Ho -- ly Spi -- rit, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 e4 dis8 e cis cis[ b] b e fis[ e] fis fis[ gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak a
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis[ e]
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*11/16 cis4. b\breve*5/16 s16 e4. cis2.~ cis2.
  dis\breve*5/16 e4. cis4 b4. cis4 b2
}
tenorNotesAnt = \relative g {
  e\breve*11/16~ e4.~ e\breve*5/16 s16 gis4. a2.~ a2.
  gis\breve*5/16 a4. gis4~ gis4. a4~ a4 gis4
}
bassNotesAnt = \relative c {
  gis\breve*11/16 a4. e'\breve*5/16~ s16 e4.
  a2. a,2. b\breve*5/16 cis4. e4~ e4.~ e4~ e2
}
