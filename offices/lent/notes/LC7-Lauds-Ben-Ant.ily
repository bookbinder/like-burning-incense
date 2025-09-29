\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The tax col -- lec -- tor
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  stood far a -- way and would not e -- ven raise his eyes to heav -- en.
  He struck his breast and prayed: God, have
  mer -- cy on me, a sin -- ner.
}
sopNotesAnt = \relative e' {
  r8 dis8 gis[ ais] gis gis4 gis
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8([ gis] fis4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis4( dis) \bar "'"
  \allowBreak dis8
  \allowBreak dis
  \allowBreak gis[ ais]
  \allowBreak gis
  \allowBreak gis
  \allowBreak ais[ b]
  \allowBreak cis
  \allowBreak cis4
  \allowBreak b8
  \allowBreak b[ ais]
  \allowBreak ais4 \bar "|"
  \allowBreak r8
  \allowBreak ais8
  \allowBreak ais[ b]
  \allowBreak ais
  \allowBreak ais[ gis]
  \allowBreak gis
  \allowBreak fis([ gis] ais4) \bar "'"
  \allowBreak gis8([ ais] gis4)
  \allowBreak gis8
  \allowBreak fis[ dis]
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis[ fis]
  \allowBreak fis
  \allowBreak e([-- fis] e4 dis8)
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 dis8~ \breve*7/16 s16 cis2. b2. cis2~ 4.~
  4.~ 2~ 4~ 4.~ 4. fis2 e\breve*5/16
  dis4 r4 cis4.~ \breve*5/16 b4
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 e2. dis s16 e2 fis4.
  e fis2~ 4~ 4. gis ais4( dis) b\breve*5/16~
  2 gis4.~ \breve*5/16~ 4
}
bassNotesAnt = \relative c {
  b\breve*9/16~ 2.~ 2. s16 e2 dis4.
  cis fis,2~ 4 fis'4. e dis2 e\breve*5/16
  b2 cis4. gis\breve*5/16~ 4
}
