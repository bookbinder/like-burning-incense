\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_119_105-112"
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
  The man of truth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  wel -- comes the light, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[-- a] \bar "'"
  \allowBreak fis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s16 cis4. e2~ 2
}
tenorNotesAnt = \relative g {
  b\breve*7/16 s16 a4.~ 2 b
}
bassNotesAnt = \relative c {
  e\breve*7/16 s16 a4. cis,2 e
}
