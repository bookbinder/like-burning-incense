\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "B"
psalmtone = "19"
psalmtonestruct = "43"
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
    Ve -- ry ear -- "ly * " on the mor -- ning af -- ter
    the sab -- bath, when the sun had just ri -- sen,
    they came to the tomb, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees8[ aes] f f4 ees4 ees8 f ees4 des8 ees f f \bar ""
    ees4 ees4 \bar "'" ees8 ees \bar "" g([ aes] bes4) aes8
    \bar "" f[ aes] \bar "" aes[ g] g4 \bar "'"
    aes8 \bar "" f[ aes] g f \bar "" f4( ees) \bar "'"
    f8 \bar "" f[ g] \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16~ c2. ees2.~ ees4~ ees4.~ ees4~ ees\breve*5/16
    c2~ c\breve*5/16 bes4~ bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*9/16~ aes2.~ aes2. bes4 g4. c4
    bes\breve*5/16 aes2~ aes\breve*5/16~ aes4~ aes4 g4
}
bassNotesAnt = \relative f {
    \global
    \keysig
    \voiceTwo
    aes\breve*9/16 aes,2. c2.
    ees4~ ees4.~ ees4~ ees\breve*5/16 aes2
    aes,\breve*5/16 des4 ees2
}
