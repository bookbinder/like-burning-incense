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
  If it is by the pow -- er of God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that I cast out dev -- ils, says the Lord,
  then the king -- dom of God has come to you al -- rea -- dy.
}
sopNotesAnt = \relative e' {
  e4 e8 cis dis e fis fis e dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e([ fis e] dis4) \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis([ b] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak e[-- dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 b\breve*7/16 s16 cis\breve*5/16 b4.~ 2~
  2.~ \breve*5/16 gis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis\breve*7/16 s16 e\breve*5/16 gis4. fis2
  e2. dis\breve*5/16 e gis2
}
bassNotesAnt = \relative c {
  cis\breve*9/16 b\breve*7/16~ s16 b\breve*5/16~ 4.~ 2
  e,2. b'\breve*5/16 cis gis2
}
