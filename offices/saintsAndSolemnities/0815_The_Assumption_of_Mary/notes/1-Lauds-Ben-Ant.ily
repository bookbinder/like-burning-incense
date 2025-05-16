\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  This daugh -- ter of Je -- ru -- sa -- lem
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is love -- ly and beau -- ti -- ful as she
  as -- cends to hea -- ven like the ri -- sing sun at day -- break.
}
sopNotesAnt = \relative e' {
  r8 e8 e4 e8 b8 cis cis[ gis'] a gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ fis e]
  \allowBreak e4
  \allowBreak e8
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak e4
  \allowBreak dis8
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 s4 cis4. e4. s16 cis2~ cis\breve*7/16
  dis4.~ dis4. cis2 a2. gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4 gis4. b4. s16 a2~ a\breve*7/16~
  a4. gis4.~ gis2 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 dis4 e4.~ e4. s16 a2 a,\breve*7/16
  b4. cis4.~ cis2~ cis2.~ cis2
}
