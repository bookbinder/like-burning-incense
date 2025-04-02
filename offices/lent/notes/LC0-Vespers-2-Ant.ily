\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "22"
psalmtonestruct = "43"
psalmnum = "Ps_116_10-19"
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
    I will of -- fer a sa -- cri -- fice of "praise * " and call
    u -- pon the name of the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8^"Different psalm tone below. Does it work?"  ees f ees des \bar "" ees[ f] ees \bar "" des f \bar "" aes4 \bar "'"
    aes8 \bar "" g[ aes] f ees des \bar "" ees[ f] ees ees \bar ""
    ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*10/16 c4. des\breve*5/16 c2 aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*5/16 aes4~ aes4.~ aes4.~ aes\breve*5/16~ aes2 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16 c4 f4. ees4. des\breve*5/16 aes2 des
}
