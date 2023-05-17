\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "2"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_114"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = bes


text = \lyricmode {
    \set includeGraceNotes = ##t
     The earth is shak -- en to its depths, " * "
    be -- fore the glo -- ry of your face.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 g8 g[ a] g \bar "" g[ f] d d f \bar "" a4( g)  
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    g8 \bar "" g g \bar "" a g f a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 d\breve*5/16 e\breve*5/16 s16
    c4 f2 d4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g\breve*5/16 a\breve*5/16 c\breve*5/16~ s16
    c4~ c2 b4 
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16 f c\breve*5/16 s16
    e4 d2 g4
}
