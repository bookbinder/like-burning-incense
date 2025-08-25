\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "3"
psalmtone = "6"
psalmtonestruct = "43"
psalmnum = "Phil_2_6-11"
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
    So great was God's love for us 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    that when we were dead
    be -- cause of our sins, he brought us to life in Christ Je -- sus.
}
sopNotesAnt = \relative e' {
    g4 g8[ c] c b[ c] \bar "" a[ b] a \bar "" g4 \bar "'"
    g8 a b a g4 g8 f g a \bar "" a4 \bar "'"
    a8 a g a \bar "" c([ d] c4) c8 \bar "" b([ c] a4) \bar ""
    b8[ a g] \bar "" g4 \bar "||"
}
altoNotesAnt = \relative g' {
    g\breve*7/16 f4. e\breve*9/16 f4.~ f\breve*6/16
    e\breve*5/16 f2 d4.~ d4
}
tenorNotesAnt = \relative g {
    c\breve*7/16~ c4.~ c\breve*9/16~ c4.~ c\breve*6/16~
    c\breve*5/16~ c2~ c4. b4
}
bassNotesAnt = \relative c {
    e\breve*7/16 f4. c\breve*9/16 d4. f\breve*6/16
    a\breve*5/16 d,2 g4.~ g4
}
