\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_139_13-18,_23-24"
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
  I know my sheep
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and mine know me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis4
  \allowBreak fis8[ a]
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*5/16 s16 cis4 e4~ 2~ 2
}
tenorNotesAnt = \relative g {
  b2~ \breve*5/16 s16 a2 b4 a cis b
}
bassNotesAnt = \relative c {
  e2 gis\breve*5/16 s16 a4 cis, e2~ 2
}
