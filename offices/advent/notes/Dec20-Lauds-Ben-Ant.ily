\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "B"
psalmtone = "26"
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
    The an -- gel Ga -- bri -- "el * " was sent to the
    Vir -- gin Ma -- ry, who was en -- gaged to be mar -- ried
    to Jo -- seph.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 f8 des ees ees[ f] ees ees4 ees8 f[ aes] aes aes bes aes g[ aes f]
    f4 \bar "," f8 f g aes4 g8 f g4 f8 f ees4 ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 des4~ des4. c4. ees2. des\breve*8/16 des\breve*8/16 bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4 f4 aes2.~ aes2.~ aes\breve*8/16~ aes\breve*8/16~ aes4 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2 aes2. c2. des\breve*8/16 bes\breve*8/16 ees2
}
