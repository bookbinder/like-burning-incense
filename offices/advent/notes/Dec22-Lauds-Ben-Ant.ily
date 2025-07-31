\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = ais


text = \lyricmode {
  \set includeGraceNotes = ##t
  The mo -- ment your gree -- ting reached my ears,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the child with -- in my womb leapt for joy.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ fis] fis e fis[ gis] fis \allowBreak e
  \allowBreak fis
  \allowBreak fis([ e] cis4)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak e8[ fis dis]
  \allowBreak e
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 cis2 cis\breve*5/16~ cis4 s4 s16 s8 b\breve*5/16
  cis2 b2 gis4
}
tenorNotesAnt = \relative g {
  e4~ e2 a\breve*5/16 gis4~ gis4. s16 e\breve*5/16~
  e2~ e4 fis4 e4
}
bassNotesAnt = \relative c {
  cis4 a2~ a\breve*5/16 cis4 e4.~ s16 e\breve*5/16
  a,2 gis4 b cis4
}
