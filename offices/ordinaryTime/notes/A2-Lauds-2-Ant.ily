\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "2"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "1_Chr_29_10-13"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    We praise your glo -- rious name,
    \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 " " }
    O Lord, our God. 
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 g8 c[ b] c a g \bar "" a4  
    \hideNotes a16 \unHideNotes   %so that I can align the * better
    a8[ g] \bar "" f[ g] a \bar "" a4( g)  \bar "||"
}
altoNotesAnt = \relative e' {
    \global
    \keysig
    r8 g8~ g\breve*5/16 f2~ s16
    f4. d2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    c4~ c\breve*5/16 c2~ s16
    c4.~ c4( b) \bar "||"
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e\breve*5/16 f2 s16
    d4. g2
}
