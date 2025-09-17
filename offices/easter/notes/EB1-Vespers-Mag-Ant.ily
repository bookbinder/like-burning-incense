\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Magnificat"
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
  Be -- cause you have seen me, Tho -- mas,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have be -- lieved; bles -- sed are they who have not
  seen me and yet be -- lieve, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 fis[ gis] gis gis a[-- gis] fis[ e] fis[-- a] a4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a4
  \allowBreak a8
  \allowBreak a
  \allowBreak a4( gis)
  \allowBreak r4 \bar "|"
  \allowBreak b8
  \allowBreak cis
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak b
  \allowBreak a[ gis fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*10/16~ 2~ s16 e2~ 2.~ 4.~
  2 fis4. cis2~ 4. e\breve*7/16 b2
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 a2 s16 cis2 b2.~ 4.~
  2 cis4. a2~ 4.~ \breve*7/16~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*10/16~ 2~ s16 e2~ 2. gis4.~
  2 fis4. a2 a,4. cis\breve*7/16 e2
}
