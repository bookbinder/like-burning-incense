\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Dan_3_26,_27,_29,_34-41"
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
    Zi -- on is our migh -- ty ci -- ta -- "del, * " our sa -- ving Lord
    its wall and its de -- fense; throw o -- en the gates, for our God is
    here a -- mong us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8[ aes'] aes4 ges8 aes ces[ bes] aes bes aes aes4 \bar "'"
    aes8 aes[ bes] aes ges[ f] ees ges4 ees8 f ees
    \bar "" ees4( des4) r4 \bar "|"
    des4 des8 ees des \bar ""
    ces([ ees] ges4) \bar "'" f8 ges \bar "" aes ges f ees \bar "" ees[ des]
    des4 \bar "'" ees8 \bar "" ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2. ees4. des\breve*5/16 ees4. des4. bes4. ces4 aes2.
    bes\breve*5/16 ces2.~ ces2 aes4~ aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 bes4 ges4. f\breve*5/16 ges4.~ ges4.~ ges4.~ ges4 f2.
    ges\breve*5/16~ ges2.~ ges2~ ges4 f4. ges4~ ges f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2.~ des4.~ des\breve*5/16 ces4. bes4. ees4. ces4 des2.
    ges\breve*5/16 ees2. ces2 des4~ des4.~ des4~ des2
}
