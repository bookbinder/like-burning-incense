\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_5_2-10,_12-13"
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
    All those who love your "name * " will re -- joice
    in you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees4 aes8[ bes] aes g[ aes] f ees4
    ees8 ees \bar "" des[ f] aes \bar "" bes4 \bar "'"
    aes8 \bar "" g[ aes] \bar "" f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 s2 s2 des4. f4. des4 bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*12/16 aes4.~ aes4.~ aes4~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*12/16 f4. des4.~ des4 ees2
}
