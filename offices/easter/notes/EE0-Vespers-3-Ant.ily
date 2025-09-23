\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Phil_2_6-11"
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
  The Son of God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  learned o -- be -- dience through suf -- fer -- ing and be -- came
  for all who  o -- bey him the source of e -- ter -- nal
  sal -- va -- tion, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e cis4( b)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e4 \bar "'"
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak e[-- gis a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis[ fis e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis([ b] gis4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ fis e]
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*12/16 s16 cis2 b dis2
  e\breve*5/16 cis2. e2~ 2. cis2.~
  4 a gis
}
tenorNotesAnt = \relative g {
  e\breve*12/16~ s16 e2 gis fis
  gis\breve*5/16 a2.~ 2 gis2. e2.~
  4~ 2
}
bassNotesAnt = \relative c {
  gis\breve*12/16 s16 a2 b~ b
  e\breve*5/16 a2. cis,2 b2. a2.~
  4 e2
}
