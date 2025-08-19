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
  Our Sav -- ior came to be bap -- tized,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  so that through the cleans -- ing wa -- ters of bap -- tism
  he might re -- store the old man to new life,
  heal our sin -- ful na -- ture, and clothe us
  with un -- fail -- ing ho -- li -- ness.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis4( cis,4)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak dis
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak gis[ b gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8[ gis fis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis[ fis e]
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis([ e] dis4)
  \allowBreak dis8
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 b4 gis\breve*9/16 s16 b4.
  cis2 s\breve*7/16 e\breve*9/16 cis\breve*5/16
  e2. cis b4.~ 2~ \breve*5/16
  gis2
}
tenorNotesAnt = \relative g {
  e\breve*7/16 dis4 e\breve*9/16 s16 fis4.
  gis2 b\breve*7/16~ \breve*9/16 a\breve*5/16~
  2. e2.~ 4.~ 2 fis\breve*5/16~
  4 e4
}
bassNotesAnt = \relative c {
  cis\breve*7/16~ 4~ \breve*9/16 s16 b4.
  e2 dis\breve*7/16 e\breve*9/16 fis\breve*5/16
  cis2. a e4. gis2 b\breve*5/16
  cis2
}
