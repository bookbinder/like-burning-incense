\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "Mag."
psalmtone = "1"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The king -- dom of hea -- "ven * " is like a mer -- chant in search of fine
    pearls; when he found one of great va -- lue, he sold e -- very -- thing
    he had and bought it.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 g8 g[ a] g g f[ e d] d4 f8 e f g[ c] c b \bar "" a[ b] c \bar ""
    b--[ a] \bar "" a4( g) r4 \bar "|"
    g8 g e[ g] g4 g8 \bar "" f[ e] d[ a'] a4 \bar "'" g8 \bar "" a[ b] \bar "" c[ d]
    c b c \bar "" a4 b8 \bar "" g4 g \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e2. d4.~ d\breve*5/16 c2~ c4. f4 d2. e\breve*7/16 d4~ d4 c4. f4 g\breve*5/16 f4. d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2. a4.~ a\breve*5/16 g2 a4. c4 b2. c\breve*7/16 a4~ a~ a4.~ a4 g\breve*5/16 c4.~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2. d4. f\breve*5/16 e2 f4.~ f4 g2. c,\breve*7/16 d4 f~ f4. d4 e\breve*5/16 f4. g2
}
