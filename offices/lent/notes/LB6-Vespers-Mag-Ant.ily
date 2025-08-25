\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key f \minor
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
    They would have ar -- res -- ted Je sus 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    but they feared the
    peo -- ple who re -- gar -- ded him as a pro -- phet.
}
sopNotesAnt = \relative e' {
    f8 f ees f \bar "" g[ aes] bes \bar "" aes[ g] g4 \bar "'" g8 aes
    \bar "" f[ c'] c \bar "" c[ bes] bes4 aes8 f \bar "" g[ aes] g
    \bar "" g4 f8 ees \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    c2 f4 ees2. f4.~ f2. ees4.~ ees2 c
}
tenorNotesAnt = \relative g {
    aes2 bes4.~ bes2. c4. des2. bes4.~ bes2~ bes4 aes
}
bassNotesAnt = \relative c {
    f2 des4. ees2. aes4. des,2. ees4. c2 f
}
