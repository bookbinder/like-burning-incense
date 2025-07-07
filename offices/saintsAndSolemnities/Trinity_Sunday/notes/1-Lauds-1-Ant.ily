\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "15"
antKeysig = \key cis \minor
psalmnum = "Ps_63_2-9"
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
  To you, O bles -- sed Tri -- ni -- ty,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be wor -- ship and ho -- nor, glo -- ry and pow -- er,
  praise and joy -- ful a -- do -- ra -- tion through
  e -- ter -- nal a -- ges.
}
sopNotesAnt = \relative e' {
  r8 e8 e4 b8 cis[ gis'] gis gis[ a] gis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak gis4 \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak fis8
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16~ b2.~ s16 b4. gis2 b4. b2
  dis4. b4.~ b4~ b2 cis2 gis2
}
tenorNotesAnt = \relative g {
  e\breve*8/16~ e2. s16 dis4. e2 fis4. gis2
  b4. gis4. fis4 dis2 fis2~ fis4 e
}
bassNotesAnt = \relative c {
  gis\breve*8/16 e2. s16 b'4. cis2 dis4. e2
  b\breve*8/16 b2 a cis
}
