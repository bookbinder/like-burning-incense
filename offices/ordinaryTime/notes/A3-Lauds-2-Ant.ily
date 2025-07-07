\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "2"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Tobit_13_1-8"
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
    Praise the e -- ter -- nal King
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in all your deeds.
}
sopNotesAnt = \relative e' {
     g8[ a] g a c b a4 
    \noBreak \hideNotes a16 \unHideNotes   %so that I can align the * better
     \allowBreak a8
     \allowBreak b
     \allowBreak a
     \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    e2. f4.~ s16
    f4 d2
}    
tenorNotesAnt = \relative g {
    c2.~ c4.~ s16
    c4~ c4( b)
}
bassNotesAnt = \relative c {
    c2. f4. s16
    d4 g2
}
