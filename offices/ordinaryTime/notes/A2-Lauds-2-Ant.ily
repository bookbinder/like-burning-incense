\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "2"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "1_Chr_29_10-13"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    We praise your glo -- rious name,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    O Lord, our God. 
}
sopNotesAnt = \relative e' {
    r8 g8 c[ b] c a g \bar "" a4  
    \hideNotes a16 \unHideNotes   %so that I can align the * better
    \allowBreak a8[ g]
    \allowBreak f[ g]
    \allowBreak a
    \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative e' {
    r8 g8~ g\breve*5/16 f2~ s16
    f4. d2
}    
tenorNotesAnt = \relative g {
    c4~ c\breve*5/16 c2~ s16
    c4.~ c4( b) \bar "||"
}
bassNotesAnt = \relative c {
    e4~ e\breve*5/16 f2 s16
    d4. g2
}
