\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "16"
antKeysig = \key e \major
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
  Bar -- na -- bas set out for Tar -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to look for Paul. Once he found him, he brought him to An -- ti -- och
  where they met with the Church and in -- struc -- ted a great num -- ber
  of peo -- ple. "[E.T. Al" -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  e8[ fis] e e e dis e cis[ b] b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak b8
  \allowBreak e[-- fis gis]
  \allowBreak a
  \allowBreak a4( gis)
  \allowBreak r4 \bar "|"
  \allowBreak gis8[ a]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e[ gis b]
  \allowBreak b4
  \allowBreak b8
  \allowBreak a[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16 s\breve*5/16 s16 e2~ e2.~ e4.
  cis\breve*5/16 e2.~ e\breve*7/16~ e2 cis2.
  e4. cis\breve*5/16 b2~ b8 cis4 b2
}
tenorNotesAnt = \relative g {
  e\breve*7/16 fis\breve*5/16 s16 gis2 b2.~ b4.
  a\breve*5/16 b2. cis\breve*7/16 a2~ a2.
  b4. a\breve*5/16 gis2~ gis8 a4~ a gis
}
bassNotesAnt = \relative c {
  gis\breve*7/16 dis'\breve*5/16 s16 e2~ e2.~ e4.
  a\breve*5/16 gis2. a\breve*7/16 cis,2 a2.
  e4.~ e\breve*5/16~ e2~ e8~ e4~ e2
}
