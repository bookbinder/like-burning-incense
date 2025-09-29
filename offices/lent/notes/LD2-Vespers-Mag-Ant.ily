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
  The fa -- ther re -- al -- ized
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that it was at that ve -- ry hour when Je -- sus had told him:
  Your son will live; and he and all his house -- hold be -- came
  be -- liev -- ers.
}
sopNotesAnt = \relative e' {
  r8 e8 fis e fis gis gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4( b)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4 \bar "|"
  \allowBreak r8
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis4
  \allowBreak b8
  \allowBreak cis[ b]
  \allowBreak b4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s4 s\breve*10/16 s16 s\breve*9/16
  dis2. cis4 b4~ 4~ 4. s4. s\breve*5/16
  cis4 b2
}
tenorNotesAnt = \relative g {
  gis2 a4 b\breve*10/16 s16 cis\breve*9/16
  b2. a4 gis4~ gis fis4.~ fis4. gis\breve*5/16
  a4~ 4 gis
}
bassNotesAnt = \relative c {
  e2.~ \breve*10/16 s16 a\breve*9/16
  b2. a,4 e'~ 4 b4. dis4. e\breve*5/16~
  4~ 2
}
