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
    All power is yours, " * "
    Lord God, our might -- y King, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    g4( fis8) g e d4 
    \hideNotes d16 \unHideNotes   %so that I can align the * better
     g4 a8 g a b b4 \breathe
    d8 b a[ g] g4      \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b4. c4 d4 s16
    b2 d4~ d~ 
    d c b
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g4.~ g4~ g4~ s16
    g2 fis4 g4 
    fis e d
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    g4. a4 b s16
    e2 d4 e 
    b c g
}
