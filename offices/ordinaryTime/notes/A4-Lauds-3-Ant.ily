\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "3"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_47"
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
    Ex -- ult in God's pre -- sence
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    with hymns of praise.
}
sopNotesAnt = \relative e' {
    r8 g g[ c] c b[ c] a4 g 
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak f[ g a]
    \allowBreak c
    \allowBreak b[( a] g4) \bar "||"
}
altoNotesAnt = \relative c' {
    e\breve*5/16 f4 e\breve*5/16 s16
    f2 d2
}    
tenorNotesAnt = \relative g {
    g\breve*5/16 a4 c\breve*5/16~ s16
    c2~ c4( b)
}
bassNotesAnt = \relative c {
    c\breve*5/16~ c4~ c\breve*5/16 s16
    d2 g
}
