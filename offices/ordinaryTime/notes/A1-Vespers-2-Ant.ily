\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "2"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_114"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = bes
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The earth is shak -- en to its depths,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    be -- fore the glo -- ry of your face.
}
sopNotesAnt = \relative e' {
    r8 g8 g[ a] g \bar "" g[ f] d d f \bar "" a4( g)  
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak g
    \allowBreak a
    \allowBreak g
    \allowBreak f
    \allowBreak a
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*5/16 d\breve*5/16 e\breve*5/16 s16
    c4 f2 d4
}    
tenorNotesAnt = \relative g {
    g\breve*5/16 a\breve*5/16 c\breve*5/16~ s16
    c4~ c2 b4 
}
bassNotesAnt = \relative c {
    e\breve*5/16 f c\breve*5/16 s16
    e4 d2 g4
}
