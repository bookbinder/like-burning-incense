\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "M"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  All ge -- ne -- ra -- tions will call me bles -- "sed: * "
  the Lord has looked with fa -- vor on his low -- ly
  ser -- vant.
}
sopNotesAnt = \relative fis' {
  \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
  \keysig
  \voiceOne
  ees8[ f] ees[ aes] aes g aes f g f f[ ees] ees4 \bar ","
  ees8 ees[ f] ees des[ ees] f aes4
  aes8 g f g f \bar "" f[ ees] \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative d' {
  \global
  \keysig
  \voiceTwo
  s2 s2 s4 s2 s8 c4. des4. ees\breve*5/16 des4 bes2
}    
tenorNotesAnt = \relative g {
  \global
  \keysig
  \voiceOne
  c\breve*10/16 bes\breve*5/16 aes4.~ aes4.~ aes\breve*5/16~
  aes4~ aes g
}
bassNotesAnt = \relative c {
  \global
  \keysig
  \voiceTwo
  aes'\breve*10/16 g\breve*5/16 aes4. f4. c\breve*5/16
  des4 ees2
}