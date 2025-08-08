\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "79"
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
  Bles -- sed is the womb
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  which bore you, O Christ, and the breast that nursed you,
  Lord and Sa -- vior of the world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( e)
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak a4
  \allowBreak a8[ b]
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak gis
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak a
  \allowBreak b
  \allowBreak gis4 \bar "'"
  \allowBreak a8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*5/16 cis s16 e2.~ e2~ e4.
  cis2. e\breve*5/16~ e4.~ 2~ 4
}
tenorNotesAnt = \relative g {
  e\breve*5/16~ e s16 a2. b2~ 4.
  a2.~ \breve*5/16 b4. a4 cis b
}
bassNotesAnt = \relative c {
  e\breve*5/16 a, s16 cis2. e2 gis4.
  a2. cis,\breve*5/16 e4.~ 2~ 4
}
