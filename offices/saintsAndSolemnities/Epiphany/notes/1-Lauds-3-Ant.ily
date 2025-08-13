\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "16"
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
  Je -- ru -- sa -- lem, your light has come;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the glo -- ry of the Lord dawns u -- pon you. Men of ev -- ery race shall walk
  in the splen -- dor of your sun -- rise, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak e8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak a[ cis]
  \allowBreak cis
  \allowBreak b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a([ gis] fis4)
  \allowBreak fis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak a
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak b4 \bar "'"
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis([~ fis]~ fis[ e])
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 e4~ 4.~ 4. s16 dis2 cis2.~
  4 b2 cis\breve*5/16~ cis e\breve*9/16
  dis\breve*5/16 cis4 a2 gis4
}
tenorNotesAnt = \relative g {
  gis2. cis4. gis4.~ s16 gis2 e2.
  a4 gis2 a\breve*5/16~ a b\breve*9/16~
  \breve*5/16 e,4~ 2~ 4
}
bassNotesAnt = \relative c {
  e2.~ 4.~ 4. s16 b2 a2.~
  4 e'2 a\breve*5/16 fis e\breve*9/16
  b\breve*5/16 a4 e2~ 4
}
