\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "10"
antKeysig = \key e \major
psalmnum = "Ps_15"
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
  He shall so -- journ in your tent;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he shall dwell on your ho -- ly moun -- tain, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 fis gis fis e fis a4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2. e2. s16 cis2. e2~ 4~ 2
}
tenorNotesAnt = \relative g {
  b2.~ 2. s16 a2. b2 cis4 b2
}
bassNotesAnt = \relative c {
  e2.~ 2. s16 a2. e2~ 4~ 2
}
