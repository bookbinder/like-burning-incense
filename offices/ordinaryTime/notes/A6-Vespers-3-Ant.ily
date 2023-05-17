\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "3"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Rev_15_3-4"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    All na -- tions will come " * " 
    and wor -- ship be -- fore you, O Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    g4 b8 c a g[( f] a4) 
    \hideNotes a16 \unHideNotes   %so that I can align the * better
    a8 b c a b a a g4 \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    d4 e4. d4~ d4. s16
    f2. d4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b4 a4.~ a4~ a4. s16
    c2. b4
}
bassNotesAnt = \relative e {
    \global
    \keysig
    \voiceTwo
    g4 c,4. d4( f4.~) s16
    f2. e4
}
