\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "44"
antKeysig = \key gis \minor
psalmnum = "Ps_149"
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
  You, my child,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  shall be called the pro -- phet of the Most High,
  for you will go be -- fore the Lord to pre -- pare his way.
}
sopNotesAnt = \relative e' {
  cis8[ e] e e4( dis)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak e[ cis]
  \allowBreak cis
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak e4( fis)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e([ fis] e4)
  \allowBreak e8
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b2. s16 cis\breve*8/16 s\breve*6/16
  cis4. gis\breve*5/16 e'4( dis2) cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
  e4. fis2. s16 gis\breve*8/16 b\breve*6/16
  gis4. e\breve*5/16 gis4( b2) gis\breve*5/16~ gis4
}
bassNotesAnt = \relative c {
  cis4. b2. s16 e\breve*8/16 dis\breve*6/16
  cis4.~ cis\breve*5/16 b2. cis\breve*5/16 gis4
}
