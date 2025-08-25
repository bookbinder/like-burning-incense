\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    God loved the world so much 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    that he gave his on -- ly Son
    to save all who have faith in him and to give them e -- ter -- nal
    life.
}
sopNotesAnt = \relative e' {
    g4 g8[ a] g \bar "" g8[ f] e d4 g8 g \bar "" g[ a] g \bar ""
    g8[ f] d d4 \bar "'" d8 \bar "" c8[ d] \bar "" d([-- e] f4)
    d8 d[ f] \bar "" g8[ a] g g4 g8 a \bar "" c8[ d c] c4 c8
    \bar "" b8([ c] a4) b8 \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*5/16 d\breve*7/16 e4. d4. r4.
    c4~ c\breve*7/16~ c\breve*7/16 e2. c\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    c\breve*5/16 a\breve*7/16 c4. f,2. e4 f\breve*7/16
    e\breve*7/16~ e2. f\breve*5/16 g4
}
bassNotesAnt = \relative c {
    e\breve*5/16 f\breve*7/16 c4.~ c2.~ c4~ c\breve*7/16~
    c\breve*7/16 a2. d\breve*5/16 g,4
}
