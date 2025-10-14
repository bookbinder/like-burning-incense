\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "10"
antKeysig = \key e \major
psalmnum = "Ps_30"
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
  You have turned
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  my mourn -- ing in -- to joy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 fis fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s\breve*5/16 s16 e\breve*5/16~ 2~ 2
}
tenorNotesAnt = \relative g {
  b4~ \breve*5/16 s16 a\breve*5/16 b4 cis b2
}
bassNotesAnt = \relative c {
  e4 gis\breve*5/16 s16 cis,\breve*5/16 e2~ 2
}
