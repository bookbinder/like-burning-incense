\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "1"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_63_2-9"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    As morn -- ing breaks, I look to you, O God,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    to be my strength this day, al -- le -- lu  -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 des8 ges[ f] ges \bar "" ees ees f ges \bar "" aes[ bes] aes aes4
    \hideNotes aes16 \unHideNotes   %so that I can align the * better
    aes8 \bar "" ges[ aes] \allowBreak
    ges \bar "" f[( ges] ees4) f8[ ees] \bar "" des4 \breathe
    \bar "" ces8 des \bar "" ees[ des] des4 \bar "||" \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    bes\breve*5/16 ces4 des4~ des2. s16
    bes4. ces2. bes4
    ces4 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    ges\breve*5/16~ ges2~ ges4. f4. s16 
    ges4.~ ges2. ~ ges4~ 
    ges4~ ges4 f4 \bar "||"
}
bassNotesAnt = \relative g {
    \global
    \keysig
    ges\breve*5/16 ces,4 bes4 des2. s16
    ees4. ces2. ges4 
    aes4 des2
}
