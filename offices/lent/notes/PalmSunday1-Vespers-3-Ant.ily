\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "1_Pet_2_21-24"
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
  Christ bore our sins
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in his own bo -- dy on the cross so that
  we might die to sin and be a -- live to all that is good.
}
sopNotesAnt = \relative e' {
  e4 fis8[ a] a gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis4
  \allowBreak a8[ gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak cis8
  \allowBreak cis([ e] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b4 cis4. e\breve*12/16 s16 s\breve*7/16
  s4. cis\breve*7/16 b4. a2 gis4
}
tenorNotesAnt = \relative g {
  gis4 a4. b\breve*12/16~ s16 \breve*7/16
  gis4. fis\breve*7/16 e4. cis2 b4
}
bassNotesAnt = \relative c {
  e4~ 4.~ \breve*12/16 s16 dis\breve*7/16
  cis4. a\breve*7/16 e4.~ 2~ 4
}
