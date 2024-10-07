\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Ben."
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    When those men saw the signs Je -- sus per -- formed, they "said: * "
    Sure -- ly this is the Pro -- phet who is to come in -- to the world.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 g8 a[ g] f[ g] a4 a8 g[ c] b c a b4 a8 a4( g) \bar "'" g8[ a] g
    \bar "" f4 e8 f \bar "" e[ d] d4 f8[ e] d c \bar "" d([ e] f4) \bar ""
    f8 g a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 f\breve*7/16 g\breve*5/16 f4. d2 e4. d2 r2 c2~ c~ c4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4~ c\breve*7/16~ c\breve*5/16~ c4. b2 c4.~ c2 a1 f2 s4. d4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4 d\breve*7/16 e\breve*5/16 f4. g2 c,4. d2 f1 a,2 d,4. g4
}
