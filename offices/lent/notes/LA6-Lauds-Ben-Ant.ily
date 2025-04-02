\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "B"
psalmtone = "1"
psalmtonestruct = "34"
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
    If your vir -- tue does nor sur -- "pass * " that of the scribes
    and Phar -- i -- sees, you will ne -- ver en -- ter the king -- dom
    of hea -- ven.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 a c4 b8 c \bar "" a[ b] a a4 \bar "" g8[ a] g a b a \bar "" a g g4 \bar "'"
    g8 g \bar "" f[ e] d \bar "" a'[ b a ] a4 b8 \bar "" c4 b8 a \bar ""
    a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    g'2. f\breve*5/16 e2 f4 s2. s4. f\breve*6/16~ f2 d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2.~ c\breve*5/16~ c2~ c4~ c2. a4. c\breve*6/16~ c2~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2. f\breve*5/16 c2 d4 e2. f4.~ f\breve*6/16 d2 g
}
