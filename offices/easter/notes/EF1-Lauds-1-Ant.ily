\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_118"
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
  This is the day
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  which the Lord has made, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak fis
  \allowBreak fis[-- a]
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis\breve*7/16 s16 e\breve*5/16~ e2
}
tenorNotesAnt = \relative g {
  b2 a\breve*7/16~ s16 a\breve*5/16 b2
}
bassNotesAnt = \relative c {
  e2 a\breve*7/16 s16 cis,\breve*5/16 e2
}
