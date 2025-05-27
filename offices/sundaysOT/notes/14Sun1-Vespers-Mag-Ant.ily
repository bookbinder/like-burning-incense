\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "61"
psalmtonestruct = "33"
psalmnum = "Magnificat"
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
    So great a har -- vest, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and so few to ga -- ther it in; pray to the Lord of the har -- vest;
    beg him to send out la -- bor -- ers for his har -- vest.
}
sopNotesAnt = \relative e' {
    
    
    g4 g8[ f] d f[ g] g4 \bar "'" g8 g[ a] a4 g8 f g a g4 r4 \bar "|"
    g8[ c] b c \bar "" a[ g] f g \bar "" g[ f d] d4 \bar "'"
    d8[ e] d e f[ a] a4 g8 g g g f g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    c4 d4. s4 e4. f4~ f\breve*6/16 d2 e2 f d4.~ d4
    c2.~ c4~ c\breve*5/16~ c4 b
}
tenorNotesAnt = \relative g {
    
    
    e4 f4. a4 c4.~ c4~ c\breve*6/16 b2 c2~ c~ c4. a4 f2.~ f4 e\breve*5/16 d2
}
bassNotesAnt = \relative c {
    
    
    c4~ c4.~ c4~ c4. f4 d\breve*6/16 g2 c,2 d2 f4.~ f4~ a,2. f4 e\breve*5/16~ e2
}
