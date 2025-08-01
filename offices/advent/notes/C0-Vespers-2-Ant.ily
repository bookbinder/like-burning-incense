\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "2"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_116_10-19"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  I, the Lord, am co -- ming to save "you; * " al -- rea -- dy I
  am near; soon I will free you from your sins.
}
sopNotesAnt = \relative fis' {
		
  e4 b8 cis[ gis'] gis gis[ a] gis gis gis[ fis] fis4 \bar "'"
  fis8 e[ gis] gis fis e fis4 \bar ","
  e4 e8 e dis[ e] fis e dis cis4 \bar "||"
}
altoNotesAnt = \relative d' {
  s4. cis4. e2 dis\breve*5/16 cis\breve*7/16 b2 b\breve*5/16 gis4
}    
tenorNotesAnt = \relative g {
  b4. a4. b2~ b\breve*5/16 gis\breve*7/16 \parenthesize b2
  fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  gis'4. fis4. e2 b\breve*5/16 cis\breve*7/16 gis2 b\breve*5/16 cis4
}