\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "2"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "NuncDimittis"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Al -- le -- lu -- "ia, * " al -- le -- lu -- ia,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    ges8 ges ges[ aes] aes4 \bar "'" ges8[ aes ges f] ees[ ges] f[ ees] des4 \bar "'"
    ees8[ ces] ees[ ges f] des4 des \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des4~ des2 bes2. ees2 ces\breve*5/16 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges4~ ges f ges2. aes2 ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes4 des2 ees2. des4 f ces\breve*5/16 des2
}
