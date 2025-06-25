\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key e \major
antiphon = "3"
psalmnum = "Ps_150"
psalmtone = "14"
psalmtonestruct = "43"
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Our God will come with great pow -- "er * "
  to en -- ligh -- ten the eyes of his ser -- vants, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  r8 e8 fis[ gis] gis gis([ a] gis4) gis8 fis[ a] a[ gis] gis4 \bar "'"
  fis8 e fis gis fis fis([ gis] a4) gis8 fis \bar "" fis[ e] \bar "" e4 \bar "'"
  fis8 \bar "" fis[ gis] \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative d' {
  s2 s8 e\breve*5/16~ e4~ e2 s4 cis4. e2. b4~ b4. cis4 b2
}    
tenorNotesAnt = \relative g {
  gis4 a4. b\breve*5/16 cis4 b2~ b4 a4.~ a2.~ a4 gis4.
  a4~ a gis
}
bassNotesAnt = \relative c {
  e4~ e4.~ e\breve*5/16~ e4~ e2 gis4 a4. cis,2. e4~ e4.~ e4~ e2
}