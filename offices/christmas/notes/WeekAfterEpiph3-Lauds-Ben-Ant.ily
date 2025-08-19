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
  The wise men
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  of -- fered their gifts of gold, frank -- in -- cense, and myrrh
  to the Lord, the Son of God and King most high, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis([ e] fis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak b4( a) \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b\breve*7/16 s16 cis4. b4( dis) e2
  fis2 \breve*5/16 e4. s4. cis4. b cis4~ 4 b
}
tenorNotesAnt = \relative g {
  e4 fis\breve*7/16 s16 e4. fis4( b~) 2~
  b2 cis\breve*5/16 b4.~ 4. gis4.~ 4. e4 gis2
}
bassNotesAnt = \relative c {
  cis4 b\breve*7/16~ s16 b4.~ 2 e2
  dis2 fis\breve*5/16 gis4. dis4. e4. gis,4.~ 4~ 2
}
