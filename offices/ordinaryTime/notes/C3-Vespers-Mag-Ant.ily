\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    My spi -- rit re -- joi -- ces " * " 
    in God my Sa -- vior.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 des8 ges[ f] ges aes ces[ bes aes] aes4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 ges[ ees f] ees ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    r8 des8~ des2 ees2.
    s16
    ces2 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges4~ ges2~ ges2.
    s16
    ees2 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes4~ bes2~ ces2.~
    s16
    ces2 des
}
