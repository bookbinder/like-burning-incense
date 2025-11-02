\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_126"
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
  Your sor -- row
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will be turned in -- to joy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 a[ gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s16 s2 e4~ 4~ 2
}
tenorNotesAnt = \relative g {
  b\breve*8/16 s16 a2 b4 cis b2
}
bassNotesAnt = \relative c {
  e\breve*8/16~ s16 e2.~ 4~ 2
}
