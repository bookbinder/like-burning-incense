\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
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
    My yoke is ea -- "sy * "
    and my bur -- den is light, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g4 c8[ b] c a[ g] g4 \bar "'" g8 g g f e d4 f8 g a4( g) \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    g\breve*5/16 e2. d\breve*5/16~ d4~ d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*5/16~ c2. a\breve*5/16~ a4 c( b)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16 c2. f\breve*5/16 d4 g2
}
