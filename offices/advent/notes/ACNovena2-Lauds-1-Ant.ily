\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "17"
antKeysig = \key e \major
psalmnum = "Ps_84"
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
  The Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the ru -- ler o -- ver the kings of the earth, will come;
  bles -- sed are they who are rea -- dy to go and
  wel -- come him.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis([ a] gis4)
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak fis([ gis fis] e4)
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak cis
  \allowBreak cis[ b]
  \allowBreak b
  \allowBreak e
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16 s16 e2. cis2 e4. cis4. b2~
  b4. s4. s2 s4. cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 s16 b2. a2~ a4.~ a4. gis2
  e4. fis4. gis2 cis4. a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
  e\breve*7/16~ s16 e2. a2 cis,4. e4.~ e2
  gis,4. b4. e2~ e4.~ e\breve*5/16~ e4
}
