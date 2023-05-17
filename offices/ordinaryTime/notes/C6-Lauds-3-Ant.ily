\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_100"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is God; " * " 
    we are his peo -- ple, the flock he shep -- herds.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 g[ aes] f ees4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    ees4 c8 des f4 ees8 f f[ aes g] f ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 bes4
    s16
    c2~ c ees bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ees\breve*5/16~ ees4~
    s16
    ees2 aes~ aes~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes\breve*5/16 g4
    s16
    aes2~ aes c ees
}
