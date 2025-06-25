\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Ps_118"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Sound the trum -- pet in Zi -- "on, * " the day of the Lord is near;
  he comes to save us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  des8[ ees] des des[ aes'] aes ges ges[ f] f4 \bar "'"
  aes8 aes[ bes] aes ges aes aes des,4 \bar ","
  des8 ces8[ ees] ges f[ ges ees] ees4 \bar "'"
  f8 ges \bar "" aes[ des,] des4 \bar "||"
}
altoNotesAnt = \relative d' {
  s4. des4 s4 des4~ des4. ees2 bes4 aes4.
  ces4.~ ces\breve*5/16 des4 aes2
}    
tenorNotesAnt = \relative g {
  bes4. f2 bes4 aes4. ges2 ees4 f4.
  ges4.~ ges\breve*5/16~ ges4~ ges f
}
bassNotesAnt = \relative c {
  ges'4. des2~ des4~ des4.~ des2.~ des4.
  ees4. ces\breve*5/16 bes4 des2
}