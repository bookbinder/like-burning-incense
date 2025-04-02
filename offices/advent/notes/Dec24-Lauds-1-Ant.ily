\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "1"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = ""
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
    Beth -- le -- hem in Ju -- dah's "land, * " how glo -- rious your
    fu -- ture! The king who will rule my peo -- ple comes from you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8[ f] d d e f[ a] a g4 \bar "'"
    g8 \bar "" c[ d] c b \bar "" a[ g] g4 \bar ","
    g8 a g f \bar "" f[ a] c b[ c a] a4 \bar "" b8 a \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 s8 s4. \parenthesize c4. e2~ e\breve*8/16 f\breve*8/16 e4 d4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    a\breve*8/16 c4.~ c2~ c\breve*8/16~ c\breve*8/16~ c4 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    d\breve*8/16 e4. a,2 c\breve*8/16 d\breve*8/16 f4 g4
}
