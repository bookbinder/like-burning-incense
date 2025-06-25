\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "27"
psalmtonestruct = "33"
psalmnum = "Ps_124"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Let the moun -- tains break out with "joy * " and the hills with
  an -- swer -- ing glad -- ness, for the world's true light, the Lord,
  comes with pow -- er and might.
}
sopNotesAnt = \relative fis' {
		
  f8 des f[ aes] aes bes[ aes] g aes f4 \bar "'"
  f8 aes bes4 aes8 g aes f \bar "" f[ ees] ees4 \bar ","
  des8 ees \bar "" ees[ f] f4 \bar "" f8[ ees] des \bar "" ees4 \bar "'"
  aes4 aes8 \bar "" g aes f \bar "" des4 \bar "||"
}
altoNotesAnt = \relative d' {
  s4^"wrong psalm tone?" ees4. ees2 f4 ees des2. bes2 des4 c2 des4 s8 \parenthesize aes4
  des4.~ des4.~ des4
}    
tenorNotesAnt = \relative g {
  aes4 aes4. g2 aes4~ aes4 aes2. g2 aes4~ aes2~ aes4.~ aes4
  f4. bes4 aes8 f4
}
bassNotesAnt = \relative c {
  des4 c4. ees2 des4 c bes4. des4. ees2 f4 aes,2
  bes4. c4 des4.~ des4.~ des4
}