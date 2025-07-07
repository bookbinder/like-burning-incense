\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_63_2-9"
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
  Bles -- sed are you, O Ma -- ry,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for the world's sal -- va -- tion came forth through you;
  now in glo -- ry, you re -- joice for -- e -- ver with the Lord.
}
sopNotesAnt = \relative e' {
  e4 e8 e gis[ a] fis[ gis] e[ gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak e[ fis]
  \allowBreak e[ dis]
  \allowBreak cis([ dis] e4)
  \allowBreak r4 \bar "|"
  \allowBreak b8[ cis]
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  b2 cis2 e2. s16 cis4. e2 cis2
  b4 gis2. b4. cis2. e4 cis4.~
  cis4 gis2
}
tenorNotesAnt = \relative g {
  gis2 a2 gis4 b2 s16 a4. gis2 a2
  fis4~ fis( e2) gis4. a2. gis4 e4.~
  e4~ e2
}
bassNotesAnt = \relative c {
  e2~ e2~ e2. s16 a4. cis,2 a2
  b4 cis2. e4.~ e2.~ e4 a,4.~
  a4 e2
}
