\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
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
  Not ev -- ery -- one who says 'Lord, Lord,' 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will en -- ter the king -- dom of hea -- ven, but the one who does the will
  of my hea -- ven -- ly Fa -- ther will cer -- tain -- ly en -- ter it.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis b e[ dis] \allowBreak cis[ gis'] \allowBreak gis([ a] gis4)
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e([ fis] gis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis[ cis]
  \allowBreak cis4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e([ gis] fis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. b4 cis4 e\breve*5/16 s16 dis4. cis4~ cis2
  a4 gis2 b4~ b\breve*5/16 e2 cis2~ cis~ cis2. a4 gis
}
tenorNotesAnt = \relative g {
  e2. gis4 gis4 b\breve*5/16~ s16 b4. gis4 e2~
  e2.~ e4~ e\breve*5/16~ e2 fis2~
  fis2 gis4 a gis fis e
}
bassNotesAnt = \relative c {
  cis2. b4 e4~ e\breve*5/16 s16 b4. cis4~ cis2~
  cis2. gis4 e\breve*5/16 gis2 fis2
  a2 cis2.~ cis2
}
%% update
