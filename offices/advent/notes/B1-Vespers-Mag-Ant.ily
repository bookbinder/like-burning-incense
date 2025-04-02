\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "M"
psalmtone = "19"
psalmtonestruct = "43"
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
    Bles -- sed are you, O Vir -- gin Ma -- "ry, * " for your great faith;
    all that the Lord pro -- mised you will come to pass through you,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees8[ aes] f ees f[ ees] des ees f f4 f \bar "'"
    ees8 ees[ f] f--[ bes] aes([ bes] aes4) r4 \bar "|"
    aes4 g8 aes \bar "" f[ ees] f ees \bar ""
    des4 ees8 \bar "" ees[ f] ees \bar "" des[ f] f ees4 \bar "'"
    f8 \bar "" f[ g] \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16 des\breve*5/16~ des2~ des4 c2
    ees2 des2~ des4. c4. des4. bes4.
    c4 bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*9/16~ aes\breve*5/16 g4 aes4~ aes2.~ aes2~ aes2~ aes4.~
    aes2. g4. aes4~ aes g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes'\breve*9/16 des,\breve*5/16~ des2 aes2. c2 des2 f4.
    aes,4. bes4. ees4.~ ees4~ ees2
}
