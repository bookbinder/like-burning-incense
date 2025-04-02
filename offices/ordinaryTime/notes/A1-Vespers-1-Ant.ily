\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord will stretch forth his might -- y scep -- ter from
    Zi -- on,  "* "
    and he will reign for ev -- er, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 e e[ f] e \bar "" g[ a] c4 c8 b c \bar "" a g f \bar "" \allowBreak a[ g]
     g4 
    \noBreak \hideNotes g16 \unHideNotes   %so that I can align the * better
     g8 \bar "" g a \bar "" c[ d] c b c \bar "" a f \bar "" a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c4 s4. g'\breve *7/16 f4. e\breve*5/16 s16
    f4 g\breve*5/16 f4 d2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    g4 a4. c\breve*7/16~ c4.~ c\breve*5/16~ s16 
    c4~ c\breve*5/16~ c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c4 f4. e\breve*7/16 f4. c\breve*5/16 s16
    d4 e\breve*5/16 f4 g2
}
