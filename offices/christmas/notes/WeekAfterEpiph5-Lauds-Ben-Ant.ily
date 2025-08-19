\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "79"
antKeysig = \key e \major
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
  All peo -- ples, bear -- ing gifts,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come from a -- far, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak gis4
  \allowBreak gis8[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( e)
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak fis
  \allowBreak a
  \allowBreak a4( gis) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16 cis\breve*5/16 s16 e2~ \breve*5/16~ 2~ 4
}
tenorNotesAnt = \relative g {
  b\breve*7/16 a\breve*5/16~ s16 a2 b\breve*5/16 a4 cis b
}
bassNotesAnt = \relative c {
  e\breve*7/16 a\breve*5/16 s16 cis,2 e\breve*5/16~ 2~ 4
}
