\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key g \major 
antiphon = "3"
psalmtone = "68"
psalmtonestruct = "special"
psalmnum = "Rev_19_1-7"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    All power is yours,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    Lord God, our might -- y King, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    g4( fis8) \bar "" g e \bar "" d4 
    \hideNotes d16 \unHideNotes   %so that I can align the * better
     g4 a8 \bar "" g \bar "" a \bar "" b \bar "" b4 \bar "" \breathe
    d8 \bar "" b \bar "" a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b4. c4 d4 s16
    b2 d4~ d~ 
    d c b
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    g4.~ g4~ g4~ s16
    g2 fis4 g4 
    fis e d
}
bassNotesAnt = \relative c {
    \global
    \keysig
    g4. a4 b s16
    e2 d4 e 
    b c g
}
