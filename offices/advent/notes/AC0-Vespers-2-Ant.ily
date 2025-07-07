\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "56"
antKeysig = \key gis \minor
psalmnum = "Ps_116_10-19"
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
  I, the Lord, am co -- ming to save you;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  al -- rea -- dy I am near; soon I will free you from your sins.
}
sopNotesAnt = \relative e' {
  e4 b8 cis8[ gis'] gis gis[ a] gis gis gis[ fis] fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4 \bar ","
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. cis4. e2 dis\breve*5/16 s16 cis\breve*7/16
  b2~ b\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  b4. a4. b2~ b\breve*5/16 s16 gis\breve*7/16
  \parenthesize b2 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  gis'4. fis4. e2 b\breve*5/16 s16 cis\breve*7/16
  gis2 b\breve*5/16 cis4
}
