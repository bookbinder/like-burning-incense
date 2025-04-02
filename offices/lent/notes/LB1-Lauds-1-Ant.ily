\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "1"
psalmtone = "22"
psalmtonestruct = "43"
psalmnum = "Ps_118"
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
    The right hand of the Lord has shown its "power; * "
    the right hand of the Lord has raised me up.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 aes8 g! aes f ees \bar "" f4 ees8 ees[ f] ees \bar "" des4 \bar ","
    des8 ees f \bar "" ees8 des ees[ f] ees f ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2.~ des4. s4 s4. s8 c4~ c\breve*7/16 des4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2. aes4.~ aes4. f4. aes4~ aes\breve*7/16 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2.~ des4. c4. bes4. aes4~ aes\breve*7/16 des4
}
