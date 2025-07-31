\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "38"
antKeysig = \key gis \minor
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Son, why have you done this to us?
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Think what an -- guish your Fa -- ther and I have en -- dured
  loo -- king for you. But why did you look for me? Did you not know
  that I had to be in my Fa -- ther's house?
}
sopNotesAnt = \relative e' {
  fis8[-- gis] gis4 fis8 gis ais[ b] ais gis ais4
  \noBreak \hideNotes ais16 \unHideNotes
  \allowBreak ais8[ b]
  \allowBreak ais
  \allowBreak ais[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak dis4
  \allowBreak cis8
  \allowBreak dis
  \allowBreak fis([-- gis] ais4)
  \allowBreak ais4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis4 \bar "|"
  \allowBreak r8
  \allowBreak gis8
  \allowBreak ais4
  \allowBreak ais8
  \allowBreak b
  \allowBreak cis
  \allowBreak b
  \allowBreak ais4 \bar ","
  \allowBreak ais8
  \allowBreak b
  \allowBreak ais[ gis]
  \allowBreak fis([ gis] ais4)
  \allowBreak ais8
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak dis4
  \allowBreak cis8
  \allowBreak dis
  \allowBreak fis[ gis fis]
  \allowBreak fis
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis2. fis2.~ s16 fis4. e2 dis2 s2 cis2~ cis2 b4
  dis4 fis2~ fis2 fis4 e dis4( cis4.) dis2 s2 cis2 b4
}
tenorNotesAnt = \relative g {
  b2. cis2.~ s16 cis4. b2~ b\breve*8/16 fis2~ fis dis4
  b'4 cis2 dis4 cis4~ cis4 b4 ais fis4.~ fis\breve*8/16 gis2~ gis4
}
bassNotesAnt = \relative c {
  b'2. fis2. s16 dis4. e2
  b\breve*8/16 ais4( fis) dis2 gis4 b'4 fis2~
  fis2 dis4 e fis~ fis4. b,\breve*8/16 e2 gis,4
}
