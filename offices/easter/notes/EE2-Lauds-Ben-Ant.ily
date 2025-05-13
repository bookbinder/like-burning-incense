\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "12"
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
  Who -- e -- ver loves me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will be loved by my Fa -- ther, and I will love him and show
  my -- self to him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 b cis e[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis b]
  \allowBreak b4
  \allowBreak a8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis4 dis2 s16 cis2 b2.~ b4 e\breve*9/16 cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
  gis2~ gis4 b2 s16 e,2 dis2. e4~ e\breve*9/16~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
  e2 cis4 b2~ s16 b2 b2. e4 gis,\breve*9/16 a2.~ a4 e'2
}
