\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "18"
antKeysig = \key e \major
psalmnum = "Rev_4_11_and_5_9,_10,_12"
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
  Yours, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is ma -- je -- sty and pow -- er,
  glo -- ry and tri -- umph, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis gis4( fis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "'"
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative e' {
  b4. cis\breve*5/16 s16 b2~ 2 cis~ 2 e4~ 2
}
tenorNotesAnt = \relative g {
  e4.~ \breve*5/16~ s16 e2~ 2~ 2~ 2 a4 b2
}
bassNotesAnt = \relative c {
  e4. a,\breve*5/16 s16 gis2 e a cis2~ 4 e2
}
