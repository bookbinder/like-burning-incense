\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
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
    Lord, give us "light * " through the ex -- am -- ple of your
    fa -- mily and guide our feet in -- to the way of peace.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees4 ees8[ aes] g g4( f) \bar "'"
    f8 g aes bes aes g f \bar "" ees4 ees4 \bar ","
    ees8 \bar "" des[ f] aes bes4 aes8 aes aes
    \bar "" g[ aes] f \bar "" f4( ees) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 des\breve*11/16~ des4 c4.
    des\breve*8/16 des4. bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*5/16~ aes\breve*11/16~ aes4~ aes4.~ aes\breve*8/16~
    aes4. g2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes'\breve*5/16 des,\breve*11/16 aes4~ aes4.
    bes\breve*8/16 des4. ees2
}
