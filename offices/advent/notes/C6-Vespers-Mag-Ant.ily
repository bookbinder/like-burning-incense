\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  This was the wit -- ness of John the Bap -- "tist: * " The One
  who comes af -- ter me ex -- is -- ted be -- fore me.
}
sopNotesAnt = \relative fis' {
		
  cis8[ e] dis b cis[ gis'] gis fis gis([ b] gis4) gis8 gis[ fis] fis4 \bar ","
  fis8 fis4 fis8 dis[ fis] gis fis \bar "" e4( fis) \bar "'"
  fis8 \bar "" e4 dis8 cis \bar "" b[ dis] \bar "" dis4( cis) \bar "||"
}
altoNotesAnt = \relative d' {
  s\breve*13/16 dis\breve*5/16 b\breve*7/16
  e4( dis4.) s2 b4 gis2
}    
tenorNotesAnt = \relative g {
  gis\breve*8/16 b\breve*5/16~ b\breve*5/16 dis,\breve*7/16
  gis4( b4.) gis2 dis4 e2
}
bassNotesAnt = \relative c {
  e\breve*8/16~ e\breve*5/16 b\breve*5/16~ b\breve*7/16~
  b4~ b4. cis2~ cis4~ cis2
}