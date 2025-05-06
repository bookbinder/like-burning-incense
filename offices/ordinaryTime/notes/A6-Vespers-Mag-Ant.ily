\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major 
antiphon = "M"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord has come to the help of his ser -- vants, \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } 
    for he has re -- mem -- bered his pro -- mise of mer -- cy.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 des8 f ges aes4 ges8 aes bes[ aes] ges f \bar "" f[ ees] ees4 
    \hideNotes ees16 \unHideNotes   %so that I can align the * better
    ees8 \bar "" ees[ f] ees ees \bar "" des[ aes'] aes ges
    \bar "" f[ ees] ees des \bar "" ees[(des] ees[ des]) des4 \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s8 \hideNotes des8~ \unHideNotes des4~ des2~ des2 c\breve*5/16 s16
    bes2 des bes aes~ aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    f2~ f ges4 aes~ aes\breve*5/16 s16
    ees2 f ges~ ges f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2~ des~ des aes\breve*5/16 s16
    ges2 des'1~ des2~ des4 
}
