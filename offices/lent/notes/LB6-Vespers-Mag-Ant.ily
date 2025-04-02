\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
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
    They would have ar -- res -- ted Je "sus * " but they feared the
    peo -- ple who re -- gar -- ded him as a pro -- phet.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8 f ees f \bar "" g[ aes] bes \bar "" aes[ g] g4 \bar "'" g8 aes
    \bar "" f[ c'] c \bar "" c[ bes] bes4 aes8 f \bar "" g[ aes] g
    \bar "" g4 f8 ees \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c2 f4 ees2. f4.~ f2. ees4.~ ees2 c
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2 bes4.~ bes2. c4. des2. bes4.~ bes2~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f2 des4. ees2. aes4. des,2. ees4. c2 f
}
