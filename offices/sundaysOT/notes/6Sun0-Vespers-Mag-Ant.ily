\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "M"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    If you are bring -- ing your gift to the al -- tar, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and there you re -- mem -- ber that your bro -- ther has
    some -- thing a -- gainst you, leave your
    gift in front of the al -- tar; go at once and make peace with your
    bro -- ther, and then come back and of -- fer your gift.
}
sopNotesAnt = \relative e' {
  r8 e8 fis gis \bar ""
  gis4 gis8 gis \bar "" fis[ a] gis fis \bar "" gis4 gis
  \hideNotes gis16 \unHideNotes   %so that I can align the * better
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak b
  \allowBreak cis
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis8
  \allowBreak b
  \allowBreak gis4
  \allowBreak gis \bar ","
  \allowBreak gis8[ fis]
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e4
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak cis
  \allowBreak cis[ e]
  \allowBreak dis([-- e] cis4)
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak a[ b]
  \allowBreak e,4 \bar "'"
  \allowBreak e8
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 e2~ e~ e\breve*9/16 s16
  e2~ e4.~ e2 e cis4.~
  cis\breve*6/16 b2. cis\breve*15/16
  b\breve*5/16 cis4 e cis4.~ cis2 b4
}
tenorNotesAnt = \relative g {
  gis2 b cis b\breve*5/16~ s16 b2 gis2~ gis4. a2 b a4.~
  a\breve*6/16 a4 gis2~ gis\breve*8/16~ gis\breve*7/16
  fis\breve*5/16 gis2 a4.~ a2 gis4
}
bassNotesAnt = \relative c {
  e2~ e~ e~ e\breve*5/16 s16 dis2
  cis2 b4. a2 e'2 a4.~ a\breve*6/16 e2. cis\breve*8/16 e\breve*7/16
  dis\breve*5/16 cis4 b a4. e'2~ e4
}
