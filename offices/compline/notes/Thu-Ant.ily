\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "1"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Ps_16"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    In you, my "God, * " my bo -- dy will rest in hope.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 g8 b[ c] a g4 \bar "'" g8 a g f f([ g] a4) b8 a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s1 f4.~ f\breve*5/16 d2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*8/16~ c4.~ c\breve*5/16~ c4( b)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*8/16 f4. d\breve*5/16 g2
}
