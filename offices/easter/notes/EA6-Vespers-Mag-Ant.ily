\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
antKeysig = \key cis \minor
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
  There is no grea -- ter love
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  than to lay down your life for your friends,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis dis[-- e] fis[ e] dis dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4 dis4 cis4. b2 s16 cis2 s2 dis\breve*5/16
  b4 gis2
}
tenorNotesAnt = \relative g {
  gis4 fis e4. fis2 s16 gis2 b2~ \breve*5/16
  fis4~ 4 e
}
bassNotesAnt = \relative c {
  e4 b4~ 4.~ 2 s16 e2 dis b\breve*5/16~
  4 cis2
}
