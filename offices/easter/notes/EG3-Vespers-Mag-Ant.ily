\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "17"
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
  You will re -- ceive
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the pow -- er of the Ho -- ly Spir -- it. You will be my
  wit -- ness -- es to the ends of the earth,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 b cis e4 
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak gis8[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s16 e2 cis4. b2. e\breve*5/16
  dis\breve*6/16 cis2 e\breve*5/16 cis4 b2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 s16 b2 a4.~ 4 gis2 b\breve*5/16~
  \breve*6/16 a2~ \breve*5/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*7/16~ s16 e2~ 4.~ 2.~ \breve*5/16
  gis\breve*6/16 a2 cis,\breve*5/16 a4 e'2
}
