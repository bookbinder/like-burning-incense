\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Al -- might -- y has done great things for me,  "*"
    and ho -- ly is his Name.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    des8 des ges f ges aes bes[ ces] bes8 ges aes4  
    \hideNotes aes16 \unHideNotes \bar ""    %so that I can align the * better
    aes8 \bar "" ges[ ees] ees4 \bar "" f8 ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des2.~ des2~ des4. s16
    bes2 ces4 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    ges2.~ ges2 f4. s16
    ges2~ ges4~ ges4( f) 
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2.~ ges2 des4. s16
    ees2 ces4 des2
}
