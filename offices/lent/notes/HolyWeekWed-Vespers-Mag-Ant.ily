\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "9"
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
  The Mas -- ter says:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  My hour is close at hand; I and my dis -- ci -- ples
  shall cel -- e -- brate the Pas -- so -- ver in your house.
}
sopNotesAnt = \relative e' {
  r8 e8 fis[ gis] gis gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak a
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak gis4 \bar ","
  \allowBreak e8
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis[ gis a]
  \allowBreak a
  \allowBreak gis
  \allowBreak a[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[-- e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. s4. s16 e2~ 4 cis2 e\breve*5/16
  cis\breve*6/16 e\breve*5/16 cis4 b
}
tenorNotesAnt = \relative g {
  gis4 a4. b s16 cis2 b4 a2~ \breve*5/16~
  \breve*6/16 b\breve*5/16 a4 gis
}
bassNotesAnt = \relative c {
  e4~ 4.~ 4.~ s16 e2~ 4 a2 cis,\breve*5/16
  a\breve*6/16 e'\breve*5/16~ 4~ 4
}
