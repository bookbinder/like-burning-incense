\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Do not work for food that will pe -- rish, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    but for food that lasts to e -- ter -- nal life.
}
sopNotesAnt = \relative e' {
    
    
    r8 g8 c4 b8 c d4 c8 b a[ g] g4 \bar "'" g8 g f[ g] a c4 a8 a b a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4 g'1 e2. f\breve*9/16 d4
}
tenorNotesAnt = \relative g {
    
    
    c4~ c1~ c2.~ c\breve*9/16 b4
}
bassNotesAnt = \relative c {
    
    
    e4~ e1 c2. d\breve*9/16 g4
}
