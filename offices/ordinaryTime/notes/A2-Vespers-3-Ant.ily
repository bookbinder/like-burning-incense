\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "3"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Ps_141_1-9"
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
    God chose us in his Son
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to be his a -- dop -- ted chil -- dren.
}
sopNotesAnt = \relative e' {
    d8
    [ e] f[ e] d e f g[( a] g4) 
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak f[ a]
    \allowBreak c
    \allowBreak c
    \allowBreak b
    \allowBreak c
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    a\breve*7/16 c\breve*5/16~ s16
    c2 f4 d2
}    
tenorNotesAnt = \relative g {
    f\breve*7/16 e\breve*5/16 s16
    a2 c4~ c b
}
bassNotesAnt = \relative c {
    d\breve*7/16 c\breve*5/16 s16
    f2. g2
}
