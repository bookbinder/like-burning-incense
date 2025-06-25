\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "B"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  From hea -- ven he "comes, * " the Lord and Ru -- ler; in his hand
  are ho -- nor and roy -- al au -- thor -- i -- ty.
}
sopNotesAnt = \relative fis' {
		
  r8 des8 des[ aes'] aes ges ges4( f) \bar "'" aes8 ges[ f ees] f ees[ des]
  des4 \bar "," des8 des[ ees] ces([ ees] ges4) ges8 f ges aes
  \bar "" ges4 f8 ees \bar "" ees des des4 \bar "||"
}
altoNotesAnt = \relative d' {
  aes2. des\breve*5/16 bes2 aes\breve*5/16 ces4~
  ces\breve*5/16 f4. des2 aes2
}    
tenorNotesAnt = \relative g {
  f2. aes\breve*5/16 ees2 f\breve*5/16 ges4~ ges\breve*5/16
  aes4.~ aes2 ges4 f
}
bassNotesAnt = \relative c {
  des2.~ des\breve*5/16~ des2~ des\breve*5/16 ces4 ees\breve*5/16
  des4.~ des2~ des2
}