\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Isa_33_13-16"
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
  Our eyes will see the King
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in all his ra -- diant bea -- ty, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis fis e fis([ a] gis4)
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis[ a gis]
  \allowBreak gis4 \bar "'"
  \allowBreak a8
  \allowBreak fis[ a]
  \allowBreak a[ gis]
  gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s4 s2. s16 cis4. e2.~ e4~ e2
}
tenorNotesAnt = \relative g {
  b\breve*7/16 a4 b2. s16 a4. b2. cis4 b2
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e4~ e2.~ s16 e4.~ e2.~ e4~ e2
}
