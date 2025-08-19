\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "1_Tim_3_16"
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
  As soon as Je -- sus was bap -- tized,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he came out of the wa -- ter, and the heav -- ens
  o -- pened be -- fore him.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak a
  \allowBreak b4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak b[ e,]
  \allowBreak e4
  \allowBreak fis8[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. s4 s4 e2. s16 cis2~ 2.
  e2 cis a4 gis
}
tenorNotesAnt = \relative g {
  gis4 a4. b4 a4 b2. s16 a2~ 2.
  e2~ 2~ 2
}
bassNotesAnt = \relative c {
  e4~ 4.~ 2~ 2. s16 a2 a,2.
  gis2 a e
}
