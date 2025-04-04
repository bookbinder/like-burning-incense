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
    If you want to be true chil -- dren of your hea -- ven -- ly Fa -- "ther, * "
    then you must pray for those who per -- se -- cute you
    and speak all kinds of e -- vil a -- gainst you, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8 g a[ g] f g \bar "" g[ c] b4 c8 a g \bar "" a g f \bar ""
    a[ g] g4 \bar ""
    g8 b c d4 c8 \bar "" a[ c] c \bar "" b a g g4 \bar "'"
    g8 \bar "" f[ e] \bar "" d[ e] d e \bar "" f e d \bar "" d[ a'] a4 \bar "'"
    g8 f \bar "" a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2. c\breve*7/16 f4. e2
    g2.~ g4.~ g4. s4 s4. s4. s2 d2.~ d2
}
tenorNotesAnt = \relative c' {
    \global
    \keysig
    c2.~ c\breve*7/16~ c4.~ c2
    b4. e4. c4. d4. b4. a4~ a2~
    a4. c2.~ c4( b)
}
bassNotesAnt = \relative c' {
    \global
    \keysig
    c2. e,\breve*7/16 f4. c2
    g'2.~ g4.~ g2. d4 f2~ f4.~ f2 d4 g2
}
