\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = bes
%% master transposition after accounting for psalm tone
master-from-pitch = ees
master-to-pitch = e


text = \lyricmode {
    \set includeGraceNotes = ##t
    Through you, sin -- less Vir -- "gin, * " the life we had lost was
    re -- stored to us; from hea -- ven you re -- ceived a child, and
    you gave birth to the Sa -- vior of the world.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 des8 ees4 ees8[ ges] ges aes4 aes \bar "'"
    aes8 ges4 ges8 aes \bar "" bes4 aes8 ges \bar ""
    aes aes \bar "" aes4 \bar ","
    aes8 \bar "" ees8 aes ges f ees des \bar ""
    ees4( des) \bar "'" des8 des des8
    \bar "" des[ ees] des des \bar "" ces des ees ges
    \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s8 \hideNotes des8~ \unHideNotes des4~ des4.~ des\breve*5/16 bes2 des~ des4~
    des4. s2. bes\breve*7/16 ces2~ ces bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges2~ ges4. f\breve*5/16 ges2~ ges f4~ f4. ges2.~ ges\breve*7/16
    ees2 aes ges4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes2~ bes4. des\breve*5/16 ees2 ges,4 bes des~ des4.
    ces2. ges\breve*7/16 aes2~ aes ees'4
}
