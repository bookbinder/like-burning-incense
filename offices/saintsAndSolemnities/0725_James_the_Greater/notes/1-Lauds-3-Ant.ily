\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "12"
antKeysig = \key e \major
psalmnum = "Ps_149"
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
  You shall drink from the cup that I shall drink from
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and you shall be bap -- tized as I am bap -- tized.
}
sopNotesAnt = \relative e' {
  e8 fis fis[ gis] fis e fis[ a] a fis4 a8 a[ gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone." s2 e2.~ e\breve*9/16 s16
  cis4.~ cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  gis4 a2 cis2. b\breve*9/16 s16
  a4.~ a\breve*5/16~ a4 gis
}
bassNotesAnt = \relative c {
  e4~ e2~ e2.~ e\breve*9/16 s16
  a4. a,\breve*5/16 e'2
}
