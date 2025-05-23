\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "1"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Ps_119_105-112_(XIV_Nun)"
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
    Je -- sus took Pe -- ter, James, and his bro -- ther, "John, * "
    and led them up a high moun -- tain. There he was trans -- fi -- gured
    be -- fore them.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8[ ees] des des des[ aes'] aes aes4 f8 ges aes[ bes] aes8 \bar ""
    ges4 \bar "'" ges8 \bar "" aes[ bes]
    aes aes aes \bar "" ges[ aes] \bar "" aes[ des,] des4 \bar ","
    ees8 des ces des ees[-- f ges] f ees \bar "" ees[ des]
    \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*14/16 bes4. ees\breve*5/16 des4 aes2
    ces\breve*9/16 aes4~ aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*14/16 ges4.~ ges\breve*5/16~ ges4 f2
    ges\breve*9/16~ ges4 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*14/16 ees4. ces\breve*5/16 bes4 des2
    ces\breve*9/16 des4~ des
}
