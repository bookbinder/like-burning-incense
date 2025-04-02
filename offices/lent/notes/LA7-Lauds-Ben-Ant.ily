\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "B"
psalmtone = "6"
psalmtonestruct = "43"
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
    If you want to be true chil -- dren of your hea -- ven -- ly
    Fa -- "ther, * " then you must pray for those who per -- se -- cute you
    and speak all kinds of e -- vil a -- gainst you, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 g \bar "" a g f \bar "" g[ c] b c a g a g f \bar "" a[ g] g4 \bar "'"
    g8 f g \bar "" a4 a8 b a g a b4 a8 a \bar "" g8[ a] g \bar "" f e d
    e f \bar "" a4 a \bar "'" g8 f \bar "" a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e4 f4. e\breve*9/16~ e\breve*7/16 f\breve*11/16 s4. s\breve*5/16
    f2~ f4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4 a4. g\breve*9/16 c\breve*7/16~ c\breve*11/16~ c4.~ c\breve*5/16~
    c2~ c4~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4~ c4.~ c\breve*9/16~ c\breve*7/16 f\breve*11/16 e4. a\breve*5/16
    f2 d4 g2
}
