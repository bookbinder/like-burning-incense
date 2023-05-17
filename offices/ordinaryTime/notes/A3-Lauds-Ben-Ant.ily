\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "B"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    God has raised up for us " * " 
    a migh -- ty Sav -- ior, 
    as he prom -- ised through the words of his ho -- ly pro -- phets.    
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    des8[ ges] f ges[ bes] bes bes aes4 \bar ""
    \hideNotes aes16 \unHideNotes   %so that I can align the * better
    aes8 ges[ ees f] ees8 ees[ des] des4 \breathe \bar ""
    des8 des des[ aes'] aes ges aes \bar "" \break ces[( bes] aes4) aes8 aes \bar ""  ges[ ees f] ees8 \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*7/16~ des4. s16
    bes2 s2.
    des4.~ des4 ees2. ces2 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges\breve*7/16 f4. s16
    ges2 aes2. 
    f4.~ f4 ges2. ees2 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes\breve*7/16 des4. s16
    ees2 f2.
    des4.~ des4 ces2.~ ces2 des2
}
