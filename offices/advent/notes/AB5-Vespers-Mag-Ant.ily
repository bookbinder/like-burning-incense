\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The one who is co -- ming af -- ter me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  e -- xis -- ted be -- fore me; I am not wor -- thy to
  un -- tie his san -- dals.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ ais] gis gis fis gis ais ais ais4
  \noBreak \hideNotes ais16 \unHideNotes
  \allowBreak ais8
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis
  \allowBreak r4 \bar "|"
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ dis]
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis
  \allowBreak fis[ dis]
  dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16 cis\breve*5/16~ s16 cis2~ cis4( b2) cis2
  dis4 s2 cis4~ cis4 b
}
tenorNotesAnt = \relative g {
  dis\breve*8/16 fis\breve*5/16 s16 e2 dis2. gis2
  ais4 fis2 gis4~ gis2
}
bassNotesAnt = \relative c {
  gis\breve*8/16 fis\breve*5/16 s16 cis'2 gis2. e'2
  dis2. e4 gis,2
}
