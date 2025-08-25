\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "80"
psalmtonestruct = "44"
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
    Watch o -- ver us, e -- ter -- nal Sa -- vior; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    do not let the
    cun -- ning temp -- ter seize us. We place all our trust in your
    un -- fai -- ling help.
}
sopNotesAnt = \relative e' {
    g8[ a] \bar "" g[ f] d d4 e8 f g \bar "" a[ g] g4 \bar "'" g8
    \bar "" g[ a] g g \bar "" g[ f] d e f \bar "" g[ a g] \bar "" g4
    \bar "|" r8 g8 \bar "" a[ c] b c a[ g] f g[ a] a \bar "" g f \bar ""
    g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \parenthesize c4 d\breve*8/16 e\breve*5/16 c2~ c\breve*5/16~ c4.
    b4~ b4 c\breve*10/16~ c4 b
}
tenorNotesAnt = \relative g {
    c4 a\breve*8/16 c\breve*5/16 e,2 f\breve*5/16 d4.~ d4~ d4
    f\breve*10/16~ f4 d4
}
bassNotesAnt = \relative c {
    e4 f\breve*8/16 c\breve*5/16~ c2 a\breve*5/16 g4.~ g4~ g f\breve*10/16
    a4 g
}
