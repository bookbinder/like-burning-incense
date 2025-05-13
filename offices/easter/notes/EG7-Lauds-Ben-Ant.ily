\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "11"
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
  Know that I am with you al -- ways,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  e -- ven un -- til the end of the world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8 dis e gis[ b] b cis[ b] b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak gis8
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak a
  \allowBreak gis
  \allowBreak fis([ gis] a4) \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16 e2 s16 b\breve*9/16 cis2~
  cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 e2~ s16 e\breve*9/16~ e2
  a4~ a gis
}
bassNotesAnt = \relative c {
  e\breve*8/16 gis,2 s16 e\breve*9/16 a2~
  a4 e'2
}
