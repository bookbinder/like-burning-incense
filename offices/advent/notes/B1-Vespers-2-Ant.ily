\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key e \major
psalmnum = "Ps_115"
psalmtone = "12"
psalmtonestruct = "34"
antiphon = "2"
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  The Lord will "come; * " he is true to his word. If he seems
  to de -- lay, keep watch for him, for he will sure -- ly come,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  r8 b,8 b[ cis] e e([ fis] e4) \bar "'" e8 fis gis4 fis8 e fis([ gis] fis4)
  \bar "," fis8 gis \bar "" e[ gis] gis b \bar "" a([ gis] fis4) fis8 \bar ""
  e[ gis] gis fis4 \bar "'"
  fis8 \bar "" e[ fis] e dis[ e] dis \bar "" cis4( b) \bar "'" b8
  \bar "" cis[ e] \bar "" fis([ gis] fis4 e8)
  \bar "" e4 \bar "||"
}
altoNotesAnt = \relative d' {
  s8 b8~ b4. cis2. e2 dis2 cis4 b2 cis\breve*5/16 b4^"quarter in alto?" s2
  gis2. s2 s8 cis4~ cis\breve*5/16 b4
}    
tenorNotesAnt = \relative g {
  fis4 gis4. a2.  b2~ b2 e,4~ e2~ e\breve*5/16 gis4. dis4. e2.
  fis\breve*5/16 gis4 a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
  dis4 e4. a2. e2 b2 a4 gis2 a\breve*5/16 b2. cis2. dis\breve*5/16 e4~
  e\breve*5/16~ e4
}