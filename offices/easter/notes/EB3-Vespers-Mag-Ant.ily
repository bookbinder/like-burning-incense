\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "12"
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
  Did not our hearts burn with -- in us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as Je -- sus talked to us on the road? al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis cis[ e] cis cis[ b] e4 fis8 fis[ gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak fis[-- e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*10/16 e\breve*14/16 s16
  cis\breve*5/16~ 4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 b\breve*14/16 s16
  a\breve*5/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*10/16~ \breve*14/16 s16
  a\breve*5/16 a,4 e'2
}
