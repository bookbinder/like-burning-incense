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
  At the Lord's birth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the choirs of an -- gels sang: Bles -- sed by our God en -- throned
  as King and bles -- sed be the Lamb.
}
sopNotesAnt = \relative e' {
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ ais]
  \allowBreak gis([ fis] dis4)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e[ fis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak ais
  \allowBreak gis4 \bar ","
  \allowBreak gis8[ ais]
  \allowBreak gis
  \allowBreak ais
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak ais
  \allowBreak ais[ b]
  \allowBreak ais
  \allowBreak ais4 \bar "'"
  \allowBreak ais8
  \allowBreak gis[ ais]
  \allowBreak gis
  \allowBreak fis
  \allowBreak dis
  \allowBreak gis([ fis] dis4) \bar "||"
}
altoNotesAnt = \relative c' {
  dis4 cis dis\breve*5/16~ s16 dis4.~ dis4 e4 fis\breve*8/16~
  fis2. e4. dis4 cis b
}
tenorNotesAnt = \relative g {
  b4 ais b\breve*5/16~ s16 b4.~ b4~ b~ b\breve*8/16
  cis2.~ cis4. ais4 gis2
}
bassNotesAnt = \relative c {
  gis'2~ gis\breve*5/16 s16 fis4.~ fis4 e4 dis\breve*8/16
  fis2. cis4. dis4 e( gis,)
}
