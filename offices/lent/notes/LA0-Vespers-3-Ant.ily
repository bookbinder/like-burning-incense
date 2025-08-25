\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Phil_2_6-11"
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
    Christ died for our sins, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the in -- no -- cent for the
    guil -- ty to bring us back to God. In the bo -- dy he was put
    to death, but in the spi -- rit he was raised to life.
}
sopNotesAnt = \relative e' {
  gis4 gis8[ a] gis fis \bar "" fis4( e)
  \hideNotes e16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak a
  \allowBreak gis[ a]
  \allowBreak fis
  \allowBreak fis([ gis] e4)
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ dis]
  \allowBreak cis
  \allowBreak cis
  \allowBreak dis
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak b4 \bar "'"
  \allowBreak b8
  \allowBreak cis
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[-- gis a gis]
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*11/16 s16 cis\breve*5/16 e\breve*7/16 cis4. b2
    s\breve*22/16 cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    b2.~ b\breve*5/16 s16 a\breve*5/16 gis\breve*7/16 a4. gis2.
    s\breve*10/16 fis4. gis4 cis\breve*5/16 a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
    e2. gis\breve*5/16 s16 a\breve*5/16 e\breve*7/16~ e4.~ e2.~
    <gis, e'>\breve*10/16 dis'4. e4~ e\breve*5/16~ e\breve*5/16~ e4
}
