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
    They will see the Son of Man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    co -- ming in the clouds with great glo -- ry and ma -- jes -- ty.
}
sopNotesAnt = \relative e' {
    
    
    e8 e f[ e] d g[ a] c \bar "" b([ a] g4) \bar "'"
    a8 g f g \bar "" a4( c) c8 b8--[c] \bar "" b4 a8 a \bar "" a g g4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2 s8 e4. g2 s2 g\breve*7/16 f2 d
}
tenorNotesAnt = \relative g {
    
    
    g4 a4. c4. d4( b) c2~ c\breve*7/16~ c2~ c4 b
}
bassNotesAnt = \relative c {
    
    
    c4~ c4.~ c4. g'2 f2 e\breve*7/16 f2 g
}
