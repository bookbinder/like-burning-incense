\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Mag."
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
    I say to "you: * " 
    there is great re -- joi -- cing a -- mong the an -- gels of God
    o -- ver one re -- pen -- tant sin -- ner.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g4 c8[ b] c a4( g) \bar "'" g8 g \bar "" b[ c] d \bar "" c4 b8 a \bar "" g[ a] g
    \bar "" f([ g] a4) a8 a \bar "" a4( g) \bar "'"
    g8 g \bar "" f[ e] d \bar "" d[ a'] b \bar "" a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*11/16 g'4. e2 d4. f\breve*6/16 d2. s4. d4.~ d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*11/16 g4.~ g2~ g4. a\breve*6/16 b2. c4.~ c~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*11/16 g4. a2 b4. d\breve*6/16 g2. a4. f g2
}
