\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_124"
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
  The snare was bro -- ken
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and we were set free, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis fis fis[ e] e4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak a4( gis) \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*5/16 s16 cis\breve*5/16 e2~ 2~ 4
}
tenorNotesAnt = \relative g {
  b2~ \breve*5/16 s16 a\breve*5/16 b2 a4 cis b
}
bassNotesAnt = \relative c {
  e2 gis\breve*5/16 s16 a\breve*5/16 e2~ 2~ 4
}
