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
    I am sen -- ding my an -- gel be -- fore "me * "
    to pre -- pare the way for my co -- ming.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 a c d c b c a a[ g] g4 \bar "'"
    g8 g a[ g] f a4 g8 f g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*8/16~ e2. f4.~ f2 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*8/16~ c2.~ c4.~ c2~ c4 b
}
bassNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*8/16 c,2. f4. d2 g2
}
