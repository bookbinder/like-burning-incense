\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Dan_3_26,_27,_29,_34-41"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, do not with -- hold " * "
    your com -- pas -- sion from us.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes8[ g] f g[ aes] bes bes[( c] bes4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    bes8 aes g[( aes] g4) g8 g f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    f2.~ f
    s16
    ees2. c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2. bes~
    s16
    bes2. aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f2. des
    s16
    ees2. f4
}
