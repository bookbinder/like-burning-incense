\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major 
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Col_1_12-20"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    He is the first -- born of all cre -- a -- tion; " * " 
    in ev -- ery way the pri -- ma -- cy is his.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    des4 f8 ges aes[ bes] aes8 aes des4 c8 bes8[ aes] aes4  
    \hideNotes aes16 \unHideNotes  \bar ""  %so that I can align the * better
    aes8 ges[ aes] bes8 \bar "" bes4 bes8 \bar "" aes f \bar "" ees8 ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2 ees2 f4. ees\breve*5/16~ s16
    ees4. des4. des2 aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 ges2 aes4.~ aes\breve*5/16~ s16
    bes4. ges4.~ ges2 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des1~ des4. c\breve*5/16 s16
    ees4. ges4. des2~ des4
}
