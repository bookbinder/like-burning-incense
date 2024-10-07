\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Ben."
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Help us, O "Lord, * "
    for we are trou -- bled; give the com -- mand, O God, and bring us peace.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    c'4 b8 a c4( b) \bar "'" a8 g[ a] g e4 e \bar "'"
    c'4 b8 a c[ d] c \bar "" c4( b) \bar "'"
    a8 \bar "" g([ a] \bar "" g4) g8 \bar "" e4 \bar "||"
}
altoNotesAnt = \relative g' {
    \global
    \keysig
    \voiceTwo
    g2~ g\breve*12/16 e\breve*7/16 g\breve*5/16 f4 d4. c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2 d\breve*5/16~ d4. c2~ c\breve*7/16 d\breve*5/16~ d4 a4.~ a4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2 g\breve*5/16 b4. a2 g\breve*7/16~ g\breve*5/16 d4~ d4. a4
}
