\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_146"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    I will praise my God " * "
    all the days of my life.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8 ees f[ des] f[ bes aes] aes4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8 ees ges[ f] ees f ees4( des4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*11/16
    s16
    bes2 aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*11/16
    s16
    ees4 ges f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*11/16~
    s16
    des2~ des
}