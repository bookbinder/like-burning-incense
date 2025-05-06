\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "3"
psalmtone = "79"
psalmtonestruct = "43"
psalmnum = "Ps_81"
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
  The Lord has fed us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with the fi -- nest wheat, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis gis[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak fis[-- a]
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 cis\breve*8/16 s16 e\breve*5/16~ e2
}
tenorNotesAnt = \relative g {
  b\breve*5/16 a\breve*8/16~ s16 a\breve*5/16 b2
}
bassNotesAnt = \relative c {
  e\breve*5/16 a\breve*8/16 s16 cis,\breve*5/16 e2
}
