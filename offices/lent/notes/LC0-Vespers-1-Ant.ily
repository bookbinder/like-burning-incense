\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_113"
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
    The Lord "says: * " Turn a -- way from sin and o -- pen
    your hearts to the Go -- spel.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 ees[ aes] \bar "" g4 \bar "'" ees8 ees \bar ""
    g[ aes] f \bar "" ees4 \bar "'" ees8 \bar "" f ees des
    \bar "" des[ f] ees des \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 s2. des4. c4. des4.~ des2 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2 bes4 g4 aes4.~ aes4.~ aes4.~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 ees2 des4. aes4. des4. f2 ees
}
