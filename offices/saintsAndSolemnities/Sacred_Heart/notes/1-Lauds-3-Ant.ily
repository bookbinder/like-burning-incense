\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_149"
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
  My son, give me your heart;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  note care -- ful -- ly the way I point out to you.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis4 fis8[ a] gis fis fis4( e)
  \noBreak \noBreak \hideNotes e16 \unHideNotes
  \allowBreak fis8[ gis fis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b2 e2 s2 s16 s4. cis2~ cis4.~ cis2 b4
}
tenorNotesAnt = \relative g {
  gis2 a2 gis2 s16 b4. gis2 a4.~ a2 gis4
}
bassNotesAnt = \relative c {
  e2~ e2~ e2 s16 dis4. cis2 a4. e'2~ e4
}
