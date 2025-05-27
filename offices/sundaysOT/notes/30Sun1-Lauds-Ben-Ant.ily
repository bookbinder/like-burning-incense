\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "1"
psalmtonestruct = "34"
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
    Son of Da -- vid, have pi -- ty on me. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} What do you want me to do
    for you? Lord, re -- store my sight.
}
sopNotesAnt = \relative e' {
    
    
    c'8[ b] c a[ g] g4 g8 f e f \bar "" d4( a') \bar "'" g4 f8 g
    \bar "" a4 g8 f \bar "" a[ b]
    a \bar "" g4 r4 \bar "|" a8--([ b c b] a4) g8
    \bar "" f[ d f a] g \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    g'4. e\breve*8/16 d2 s2 f2~ f4. d2
    e\breve*7/16 d\breve*5/16~ d4
}
tenorNotesAnt = \relative g {
    
    
    c4.~ c\breve*5/16~ c4.~ c2~ c2~ c2~ c4. b2 a\breve*7/16~
    a\breve*5/16 b4
}
bassNotesAnt = \relative c {
    
    
    e4. c\breve*5/16 d4. f2 e d f4. g2
    c,\breve*7/16 d\breve*5/16 g,4
}
