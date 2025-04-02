\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Dan_3_52-57"
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
    God of  "might, * " de -- li -- ver us; free us from the power
    of the e -- ne -- my.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees8[ aes] aes \bar "" g4 \bar "'" ees8 \bar "" g[ aes] f \bar "" ees4
    \bar "," f8 ees des ees \bar "" f4 des8 ees \bar "" f ees ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*11/16 des2~ des bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4. bes aes g4 aes2~ aes~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4. ees2.~ ees4 des2 bes ees
}
