\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A cer -- tain man held a ban -- "quet * " 
    and in -- vi -- ted ma -- ny; when it was time for the ban -- quet
    to be -- gin, he sent his ser -- vant to call his guests, for now
    the feast was rea -- dy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 g8 g[ f] d f4 g8 a \bar "" b[ a g] g4 \bar "'" g8 g \bar ""
    f[ a] a \bar "" g4 g \bar "|"
    r4 g8 b c \bar "" d4 c8 a \bar "" c[ d] c c c \bar "" b4 \bar "'" a8 \bar ""
    g[ a] a b a a \bar "" g[ a]
    g \bar "" g4 \bar "'" g8
    \bar "" f[ e] d \bar "" d[ a'] g \bar "" a4 a \bar "'" a8 \bar ""
    a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \parenthesize c4 d\breve*7/16~ d4.~ d2~ d4.~ d2
    s4 s8 g4 e2 g\breve*5/16~ g4. e2. s4. s4 s8 s4. s4. g4 f4. e4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c4 a\breve*7/16 g4. b2 a4. c4 b4~ b4. d4 c2~ c\breve*5/16 d4.
    c2. d4.~ d4. c2.~ c4~ c4.~ c4~ c4 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4 d\breve*7/16 g4.~ g2~ g4.~ g2~ g2 s8 a2 e\breve*5/16 g4. c2.
    b4.~ b4. a4. f d4~ d4. f4 g2
}
