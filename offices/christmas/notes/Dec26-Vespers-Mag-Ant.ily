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
  While earth was rapt in si -- lence
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and night on -- ly half through its course, your al -- migh -- ty Word,
  O Lord, came down from his roy -- al throne, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e dis[ e] fis fis[ gis fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak gis
  \allowBreak gis4( fis) \bar "'"
  \allowBreak fis8[ gis fis]
  \allowBreak e4
  \allowBreak cis8
  \allowBreak cis
  \allowBreak b[ cis]
  \allowBreak dis
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b4. cis4. b4.~ s16 b\breve*8/16
  cis2 e2. b\breve*7/16 gis2
  b2.~ b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4. e4. dis4. s16 e\breve*8/16~
  e2~ e2. dis\breve*7/16 e2
  fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b4.~ b4.~ b4. s16 e,\breve*8/16~
  a2 gis2. gis\breve*7/16 cis2
  dis4. b4. gis4 cis2
}
