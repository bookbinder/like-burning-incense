\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Guard what is "good * " and che -- rish what is true, for our
  sal -- va -- tion is at hand.
}
sopNotesAnt = \relative fis' {
		
  gis4 gis8 fis fis4( e) \bar "'" e8 gis[ a] gis fis e fis4 \bar ","
  fis8 gis a b4 b8 b b e,4 \bar "||"
}
altoNotesAnt = \relative d' {
  e2 cis\breve*5/16 e\breve*10/16 dis4. cis4 e4
}    
tenorNotesAnt = \relative g {
  b2 a\breve*5/16 b\breve*5/16~ b\breve*5/16~ b4. a4 gis4
}
bassNotesAnt = \relative c {
  e2~ e\breve*5/16~ e\breve*5/16 dis\breve*5/16 gis4. a4 e4
}