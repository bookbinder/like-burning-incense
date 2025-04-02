\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "M"
psalmtone = "38"
psalmtonestruct = "32"
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
    When I am lif -- ted up from the "earth, * " I will draw all
    peo -- ple to my -- self.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 e8 e8 \bar "" e[ f] d \bar "" g4 a8 c \bar "" b([ a] g4) \bar "'"
    g8 g \bar "" f([ g] a4) a8[ g] \bar "" g8[ a] g g f \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*7/16 e2 g2 r4 f2. d\breve*5/16 c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g2 f4. c'2 d4( b2) a2. f\breve*5/16 a4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2~ c4.~ c2 g'2. d2.~ d\breve*5/16 a4
}
