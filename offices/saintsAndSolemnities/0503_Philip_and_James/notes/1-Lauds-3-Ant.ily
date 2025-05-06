\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
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
  Do not let your hearts be trou -- bled or a -- fraid;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  trust in God and trust al -- so in me; there are ma -- ny rooms
  in my Fa -- ther's house, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 fis[ gis] gis gis gis[ a] gis fis4 gis8 a b a4( gis)
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8[ b]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis[ b]
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e4
  \allowBreak cis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s4. s\breve*5/16 s2 s16 e\breve*8/16
  cis2 b2. gis2 cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
  gis2. b4. a\breve*5/16 b2 s16 s\breve*8/16
  s2 dis,2. e2~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
  e2.~ e4.~ e\breve*5/16~ e2~ s16 \tieUp <gis, e'~>\breve*8/16 \tieDown
  <a e'>2 gis2. cis2 a2.~ a4 e'2
}
