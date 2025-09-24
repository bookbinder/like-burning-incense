\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "55"
antKeysig = \key gis \minor
psalmnum = "Eph_1_3-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  When I am lift -- ed up from the earth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I shall draw all peo -- ple to my -- self, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 fis8 gis ais[ b] ais ais4 gis8 fis gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis4
  \allowBreak fis8[ dis]
  \allowBreak dis8
  \allowBreak cis8
  \allowBreak dis
  \allowBreak fis([ gis] ais4) \bar "'"
  \allowBreak gis8 \allowBreak fis
  \allowBreak gis4 gis
  \bar "||"
}
altoNotesAnt = \relative c' {
  dis2 fis\breve*7/16 e4 s16 cis4 s2 dis4.
  r4 fis2 s4 dis2
}
tenorNotesAnt = \relative g {
  b2 cis\breve*7/16~ 4 s16 e,4 b'2~ 4.~ 4 ais2 cis4~ 4 b
}
bassNotesAnt = \relative c {
  gis'2 fis\breve*7/16 cis2 s16 dis2 b4.~ 4 dis2 e4 gis2
}
