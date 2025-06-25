\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "2"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_130"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Come, Lord, do not de -- "lay; * " free your peo -- ple from their
  sin -- ful -- ness.
}
sopNotesAnt = \relative fis' {
		
  e4 cis8[ e] e fis e e4( dis4) \bar ","
  cis8[ gis'] gis gis4 gis8 fis e e dis dis4 \bar "||"
}
altoNotesAnt = \relative d' {
  cis4 s1 s8 gis\breve*8/16 cis4 b4
}    
tenorNotesAnt = \relative g {
  gis4~ gis4.~ gis4 fis2 e\breve*8/16 gis2
}
bassNotesAnt = \relative c {
  cis4 e4.~ e4 b2 cis\breve*8/16 gis2
}