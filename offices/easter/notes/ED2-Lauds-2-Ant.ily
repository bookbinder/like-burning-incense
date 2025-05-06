\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Isa_42_10-16"
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
  I will turn
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  dark -- ness in -- to light be -- fore them, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 gis gis4( fis)
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis4 \bar "'"
  \allowBreak a8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 s16 s\breve*5/16 e4. cis\breve*5/16 e4~ e2
}
tenorNotesAnt = \relative g {
  b4 a2 s16 gis\breve*5/16 b4. a\breve*5/16~ a4 b2
}
bassNotesAnt = \relative c {
  e4~ e2~ s16 e\breve*5/16~ e4. a\breve*5/16 cis,4 e2
}
