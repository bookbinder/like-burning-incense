\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key c \major
antiphon = "B"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Ps_51"
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
    He will bring those e -- vil men 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to an e -- vil end and
    en -- trust his vine -- yard to o -- ther ten -- ants who will give him
    the har -- vest at the pro -- per sea -- son.
}
sopNotesAnt = \relative e' {
    g8 g \bar "" a[ g] f \bar "" g[ c] c \bar "" b4 g8 g \bar ""
    b[ c] a \bar "" g4 \bar "," g8 g \bar "" a[ g] f a4 g8 f
    \bar "" f[ a] a \bar "" g[ a g] g4 \bar "'" g8 g \bar ""
    f[ e] d e f[ a] a g a \bar "" b a \bar ""
    g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    e4 r4. g4.~ g2 e4. d2~ d\breve*7/16 f4. s\breve*7/16 s\breve*9/16
    f4 d2
}
tenorNotesAnt = \relative g {
    c4~ c4.~ c4. d4 b c4. b2 a\breve*7/16~ a4. c\breve*7/16~ c\breve*9/16~
    c4~ c b
}
bassNotesAnt = \relative c {
    c4 f4. e4. g2~ g4.~ g2 f\breve*7/16 d4. e\breve*7/16 a\breve*9/16 f4 g2
}
