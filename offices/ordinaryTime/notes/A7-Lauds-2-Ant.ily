\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "2"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Exod_15_1-4a,_8-13,_17-18"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is my strength, " * " 
    and I shall sing his praise, for he has be -- come my Sav -- ior.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 des8 ges[ f]  ges aes ces[( bes] aes4)  
    \hideNotes aes16 \unHideNotes   %so that I can align the * better
    aes8 ges[ aes]  ges ees[ f] ees ees4( des) \bar "'" des8 ces4 ees8 ges f[ ges] ees f[ ees des]  des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    r8 \hideNotes des8~ \unHideNotes des2 ees\breve*5/16 s16 
    des4. ces bes\breve*4/16 s8 ces2~ ces4. aes4. aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    bes2. ges\breve*5/16~ s16
    ges4.~ ges~ ges\breve*4/16~ s8 ges2~ ges4.~ ges4. f4
}
bassNotesAnt = \relative e {
    \global
    \keysig
    \voiceTwo
    ges2. ces,\breve*5/16 s16
    bes4. ces ges\breve*4/16 s8 ees'2 ces4. des4.~ des4
}
