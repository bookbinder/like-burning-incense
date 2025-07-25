\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "42"
psalmtonestruct = "43"
antKeysig = \key cis \minor
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  He will be en -- throned in Da -- vid's "place * "
  to be king for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  cis8 dis e dis cis[ gis'] gis gis([ a] gis4) gis8 fis4
  e8 fis gis([ fis] gis4) fis8 gis[ cis,] cis4 \bar "'"
  b8[ dis] dis dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative d' {
  s2 cis4. e\breve*5/16 dis2 cis\breve*5/16 gis2
  b4. gis2
}    
tenorNotesAnt = \relative g {
  gis2~ gis4. b\breve*5/16~ b2 e,\breve*5/16~ e2 dis4. fis4 e
}
bassNotesAnt = \relative c {
  e2~ e4.~ e\breve*5/16 b2 a\breve*5/16 cis2~ cis4.~ cis2
}