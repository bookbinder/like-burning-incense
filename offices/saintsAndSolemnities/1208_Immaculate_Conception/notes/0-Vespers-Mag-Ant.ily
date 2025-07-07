\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "42"
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
  All ge -- ne -- ra -- tions will call me bles -- sed:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Al -- migh -- ty has done great things for me.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis e fis gis fis e fis4 fis
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 dis2. s16 cis\breve*5/16 b2 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 fis2.~ s16 fis\breve*5/16~ fis2 e4
}
bassNotesAnt = \relative c {
  e\breve*9/16 b2. s16 a\breve*5/16 gis2 cis4
}
