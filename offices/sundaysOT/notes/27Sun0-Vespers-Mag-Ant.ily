\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
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
    He will bring those e -- vil men to an e -- vil "end * " 
    and en -- trust his vine -- yard to o -- ther te -- nants who will give
    him the har -- vest at the pro -- per sea -- son.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g4 g8 g[ a] g \bar "" f[ e] d d[ f] e f \bar "" g--[ a b] a g4 \bar "'"
    g8 g \bar "" b[ c] a \bar "" b4 a8 a g[ a] g \bar "" f[ e d] d4 \bar "'"
    d8 e f e d \bar "" a'4 a8 g a b a \bar "" g4 \bar "" g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*6/16 d\breve*7/16 f2 g2 e4. f2 e4. d\breve*7/16 r4. f\breve*7/16 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c\breve*6/16~ c\breve*7/16~ c2~ c~ c4.~ c2~ c4.~ c\breve*10/16~ c\breve*7/16~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c\breve*6/16 d\breve*7/16 f2 e a4. f2 c4. d\breve*10/16 f\breve*7/16 g2
}
