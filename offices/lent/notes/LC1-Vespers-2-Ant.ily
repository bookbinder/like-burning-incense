\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_111"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    We have been re -- "deemed * " by the pre -- cious blood of Christ,
    the lamb with -- out ble -- mish.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8 des f ges \bar "" aes([ bes] aes4) \bar "'"
    aes8 aes \bar "" ges8[ bes] bes bes4 ges8 \bar ""
    aes8([ ges] f4) \bar "'" ees8 \bar ""
    des8[ ees] des ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2 ees2. des2.~ des\breve*5/16 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 ges2.~ ges2. f\breve*5/16 ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2 ces2. bes4. ges4. des'\breve*5/16~ des\breve*5/16~ des2
}
