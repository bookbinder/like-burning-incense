\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "78"
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
    The an -- gel Ga -- bri -- "el * " said to Ma -- ry in gree -- ting:
    Hail, full of grace, the Lord is with you; bles -- sed are you a -- mong
    wo -- men. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    r8 des8 des[ aes'] aes \bar "" bes aes aes4 \bar ""
    ges8[ f] ees ees ees f \bar "" ees[ des] des4 \bar ","
    des8[-- aes'] \bar "" ges[ f] ges \bar "" aes4 \bar "'" aes8
    \bar "" bes8[ aes] aes4 \bar "" bes8[ aes] aes4 \bar ","
    ges4 f8 ees \bar "" f[ ges] ees \bar "" f[ ees] \bar ""
    ees[ des] des4 \bar "||" ees8 \bar "" ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    s8 des8~ des4.~ des2~ des\breve*10/16~ des4~ des4.~ des4.
    ees2 des2 bes2 ees4. ces4 aes2~ aes8 bes4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    f4~ f4. ges2 bes\breve*6/16 aes2 des,4 ges4. f4.
    ges2 f2 ges2~ ges4.~ ges4~ ges4 f~ f8 ges4~ ges f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    des4~ des4.~ des2~ des\breve*6/16 f2 f,4 bes4.
    des4. ces2 des2 ees2 ces4.~ ces4 des2~ des8~ des4~ des2
}
