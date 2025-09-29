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
  I am my own tes -- ti -- mo -- ny, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and my Fa -- ther who sent me al -- so tes -- ti -- fies on my be -- half.
}
sopNotesAnt = \relative e' {
  gis4 fis8 a gis[ a] b gis fis e fis[ gis] fis fis([ gis] fis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis a]
  \allowBreak a4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2. e2 s4. s2. s16 e2~ 4.~
  2 cis\breve*8/16 b4
}
tenorNotesAnt = \relative g {
  b4 a b gis2 a4. b2. s16 gis2 a4.~
  2~ \breve*8/16 gis4
}
bassNotesAnt = \relative c {
  e2.~ 2~ 4. dis2. s16 cis2~ 4.~
  2 a\breve*8/16 e'4
}
