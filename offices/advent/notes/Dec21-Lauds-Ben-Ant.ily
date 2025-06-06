\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "Ben"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    There is no need to be a -- "fraid; * "
    in five days our Lord will come to us.
}
sopNotesAnt = \relative e' {

    
    
    g8 g g[ c] a4 a8 g a a4( g) \bar ","
    g8 b[ c d] d4 d8 c a b a g4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    g'4 f\breve*7/16 e\breve*5/16 d2. g4 f4 d4
}
tenorNotesAnt = \relative g {

    
    
    c4~ c\breve*7/16~ c\breve*5/16 b2. c4~ c4 b4
}
bassNotesAnt = \relative c {

    
    
    e4 f\breve*7/16 c\breve*5/16 g'2. e4 f4 g4
}
