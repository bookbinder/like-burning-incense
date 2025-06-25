\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  See how glo -- rious he "is * " co -- ming forth as
  Sa -- vior of all peo -- ples.
}
sopNotesAnt = \relative fis' {
		
  ees8 f aes4 g8 f ees4 \bar "'"
  ees8[ f] ees des f aes4 aes8 aes g([ aes] f4) g8[ f ees] ees4 \bar "||"
}
altoNotesAnt = \relative d' {
  c4 des2 ees4 \parenthesize bes4. des4 c2 des2 bes4.~ bes4
}    
tenorNotesAnt = \relative g {
  aes4~ aes2~ aes4 bes4. aes4~ aes2~ aes aes4. g4
}
bassNotesAnt = \relative c {
  aes4 bes2 c4 g'4. f4 ees2 des2 ees4.~ ees4
}