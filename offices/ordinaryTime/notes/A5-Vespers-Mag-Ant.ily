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
    God has cast down the migh -- ty from their thrones  "* "
    and has lift -- ed up the low -- ly.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    f8 ees des[ ees] des ees f ges aes aes \allowBreak bes4( aes) 
    \hideNotes aes16 \unHideNotes \bar ""   %so that I can align the * better
    aes8 \allowBreak aes \bar "" \allowBreak
    ges[ aes] bes \bar "" aes4 ges8 \bar "" aes[ des,] \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    aes1 ees'4 des2. s16
    des4. bes aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    f1 ges4 f2. s16
    ges4.~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des1~ des4~ des2. s16
    bes4. ges4. des'2
}
