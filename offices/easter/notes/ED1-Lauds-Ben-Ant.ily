\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "16"
antKeysig = \key e \major
psalmnum = "Benedictus"
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
  I am the shep -- herd of the sheep;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I am the way, the truth and the life; I know my sheep, and my sheep
  know __ me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 fis8 e fis[ gis] fis e fis gis4( fis)
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis4( fis) \bar ","
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ b]
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8([-- gis] a[ gis fis])
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  e2 cis\breve*5/16~ cis2 s16 e2 cis4. b2 cis2
  b\breve*8/16 b4 cis\breve*8/16~ cis4 b2
}
tenorNotesAnt = \relative g {
  b2 a\breve*5/16~ a2 s16 b2 a4. gis2 e2~
  e\breve*8/16~ e4~ e\breve*8/16 a4~ a gis
}
bassNotesAnt = \relative c {
  e2 a\breve*5/16 a,2 s16 e'2~ e4.~ e2 a,2
  gis\breve*8/16 e4 a\breve*8/16~ a4 e'2
}
