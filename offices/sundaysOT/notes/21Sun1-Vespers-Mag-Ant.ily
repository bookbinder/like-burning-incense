\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ma -- ny shall come from the east and the west, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and they shall sit down with A -- bra -- ham and I -- saac and Ja -- cob
    in the king -- dom of hea -- ven.
}
sopNotesAnt = \relative e' {
  gis4 fis8 gis cis,[ e] dis8 e \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak b[ ais]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis[ ais]
  \allowBreak ais
  \allowBreak ais
  \allowBreak gis4
  \allowBreak gis \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak cis,[ e]
  \allowBreak e
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*12/16 b\breve*5/16 s16 cis4 e fis\breve*5/16 fis2 dis2
  \parenthesize b4 cis2~ cis4 b
}
tenorNotesAnt = \relative g {
  e\breve*12/16 fis\breve*5/16 s16 gis4 b4~ b\breve*5/16 ais2 b2~ b4 gis2~ gis
}
bassNotesAnt = \relative c {
  cis\breve*12/16 b\breve*5/16 s16 e4~ e dis\breve*5/16~ dis2 gis2 dis4 e2 gis,
}
