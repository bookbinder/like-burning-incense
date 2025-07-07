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
  Je -- sus Christ died
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and is ri -- sen from the deaad. Now he lives for -- e -- ver
  at the right hand of the Fa -- ther where he in -- ter -- cedes for us,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis fis[ a] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak e,4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s4. s4 s2 s16 cis\breve*5/16 b2~ b\breve*10/16~
  b2 cis\breve*7/16 b2 cis4.~ cis4 a4 gis
}
tenorNotesAnt = \relative g {
  b4. a4 b2 s16 a\breve*5/16 gis2 e\breve*10/16~
  e2~ e\breve*7/16~ e2~ e4.~ e4~ e2
}
bassNotesAnt = \relative c {
  e4.~ e4~ e2~ s16 e\breve*5/16~ e2 gis,\breve*10/16
  e2 a\breve*7/16 gis2 a4.~ a4 e2
}
