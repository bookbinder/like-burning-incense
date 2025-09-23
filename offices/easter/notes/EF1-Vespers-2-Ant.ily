\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "9"
antKeysig = \key e \major
psalmnum = "Ps_115"
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
  You have been turned from faith in i -- dols
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to the liv -- ing God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 fis8 e fis[ gis] fis gis[ a] cis b[ gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis2. e s16 cis\breve*8/16~
  4 b2
}
tenorNotesAnt = \relative g {
  b2 a2. gis s16 a\breve*8/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e2~ 2.~ 2. s16 a\breve*8/16 a,4 e'2
}
