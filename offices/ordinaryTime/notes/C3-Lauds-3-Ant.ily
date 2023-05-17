\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "3"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_67"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, let the light of your face " * " 
    shine up -- on us.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    c8[ des] c bes ees4 f8 aes g[( f] ees4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8[( f] ees4) des8 des[ c] c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 ees2 ees4 bes~
    s16
    bes\breve*5/16~ bes4 aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 aes2 bes4( g4)
    s16
    f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2 c ees
    s16
    bes\breve*5/16
    f2
}
