\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Jer_14_17-21"
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
  in his own bo -- dy as he hung u -- pon the cross, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 gis8[ a] gis gis4( fis)
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis[ a gis]
  \allowBreak gis4 \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[-- a] \bar "'"
  \allowBreak a8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s\breve*7/16 s16 cis4. s4 s4
  e\breve*5/16~ e\breve*5/16~ e2
}
tenorNotesAnt = \relative g {
  b\breve*5/16 a\breve*7/16 s16 cis4. b4 gis4
  b\breve*5/16 a\breve*5/16 b2
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e\breve*7/16~ s16 e4.~ e2~
  e\breve*5/16 cis\breve*5/16 e2
}
