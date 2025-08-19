\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "17"
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
  The wise men came from the East
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to a -- dore the Lord in Beth -- le -- hem. O -- pen -- ing their
  trea -- sures, they
  of -- fered him three pre -- cious gifts: gold for the great King,
  frank -- in -- cense for the true God, and myrrh for his bur -- ial,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak e8
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak gis8[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis4( fis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak fis8
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak cis[ b]
  \allowBreak b
  \allowBreak \breathe
  \allowBreak cis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak r4 \bar "|"
  \allowBreak e4
  \allowBreak gis8
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak b4 \bar "'"
  \allowBreak a8
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e4
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis
  \allowBreak \breathe
  \allowBreak e8
  \allowBreak e[ gis]
  \allowBreak fis([~ fis]~ fis[ e])
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*10/16 cis\breve*9/16~ s16 cis\breve*5/16 b4.~
  2 cis2 s2 e4.~ 4 dis2
  cis4( dis2) e2 fis4 gis e2. cis\breve*5/16~
  4 s4 s\breve*5/16 e4 cis2 b4
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 fis\breve*9/16 s16 a\breve*5/16~ 4.
  gis2~ gis fis gis4. b4~ 2
  e,4( fis2) gis2 a4 b4~ 2. a\breve*5/16
  gis4 fis gis\breve*5/16~ 4 a2 gis4
  
}
bassNotesAnt = \relative c {
  e\breve*10/16 a,\breve*9/16~ s16 a\breve*5/16 e'4.~
  2 cis2 dis2 e4.~ 4 b2~
  2. e2~ 2 gis2. a\breve*5/16
  cis,4 dis e\breve*5/16~ 4~ 2~ 4
}
