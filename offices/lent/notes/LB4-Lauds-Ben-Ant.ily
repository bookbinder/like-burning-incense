\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "B"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    The Son of Man did not come to be "served * " but to serve,
    and to give his life as a ran -- som for ma -- ny.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 ees[ aes] f f[ ees] ees des[ ees] \bar "" f ees des \bar ""
    f4 ees8 f \bar "" aes([ bes] aes4) \bar "'" aes8 aes \bar ""
    g[ aes] f \bar "" f([-- g] aes4) f8 f \bar "" g4 f8 f \bar ""
    f8[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*10/16 des4.~ des2 c2.~ c4.~ c2. des2 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*10/16~ aes4.~ aes2~ aes2.~ aes4.~ aes2.~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*10/16 bes4. des2 f2.~ f4. ees2. des2 ees
}
