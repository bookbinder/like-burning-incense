\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_148"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  I shall en -- fold Zi -- "on * " with my sal -- va -- tion
  and shed my glo -- ry a -- round Je -- ru -- sa -- lem,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  e4 dis8 e cis[ b] e[ fis] fis4 fis8 fis[ gis] fis fis[ e] e4 \bar "'"
  e8 \bar "" fis[ gis] fis \bar "" gis[ b] b b a gis \bar "" gis fis fis4 \bar "'"
  fis8 fis[ gis] \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative d' {
  b2. cis\breve*5/16~ cis4.~ cis\breve*5/16 \parenthesize b4.
  e\breve*6/16 cis\breve*7/16 b2
}    
tenorNotesAnt = \relative g {
  e2.~ e\breve*5/16 a4. gis\breve*5/16 b4. gis\breve*6/16
  a\breve*7/16~ a4 gis4
}
bassNotesAnt = \relative c {
  gis2. a\breve*5/16~ a4. cis\breve*5/16 dis4. e\breve*6/16~
  e\breve*7/16~ e2
}