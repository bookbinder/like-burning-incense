\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "17"
antKeysig = \key e \major
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
  See -- ing the star,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the wise men said: This must sig -- ni -- fy the birth of some great king.
  Let us search for him and lay our trea -- sures at his feet:
  gold, frank -- in -- cense and myrrh.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis4( e)
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( e) \bar ","
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak a[ cis]
  \allowBreak b4( gis)
  \allowBreak r4 \bar "|"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak e4
  \allowBreak fis8
  \allowBreak e
  \allowBreak cis
  \allowBreak b
  \allowBreak cis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  e2 cis\breve*5/16 s16 e4 cis2~ 4. e2~
  \breve*5/16~ 4~ 2.~ 4~ 4. cis\breve*5/16 e2
  dis2 cis4~ 4 s4 a4( gis)
}
tenorNotesAnt = \relative g {
  b2 a\breve*5/16 b4 a2~ s16 a4. gis2~
  \breve*5/16 a4 gis4( b2~) 4~ 4. a\breve*5/16 b2~
  2 gis4 fis e~ 2
}
bassNotesAnt = \relative c {
  e2~ \breve*5/16~ 4 a2 s16 a,4. b2~
  \breve*5/16 cis4 e2.~ 4 gis4. a\breve*5/16 e2
  b cis4 a2 e
}
