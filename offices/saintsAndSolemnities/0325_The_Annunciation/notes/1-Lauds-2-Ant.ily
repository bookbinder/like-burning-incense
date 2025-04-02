\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Dan_3_57-88,_56"
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
    Bles -- sed are you a -- mong wo -- "men, * " and bles -- sed is
    the fruit of your womb. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    des8 ees ges \bar "" ges4 ges8 aes[ bes] \bar "" aes4 \bar "" aes \bar "'"
    aes8 \bar "" f[ aes] aes ges f \bar "" ees[-- f ges] ees f[ ees]
    \bar "" ees4( des) \bar "||" ees8 \bar "" ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    des4.~ des\breve*5/16~ des4~ des4.~ des\breve*5/16 bes2. aes2~
    aes8 bes4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    bes4. s\breve*5/16 s4 f4.~ f\breve*5/16 ges2. f2~ f8 ges4~ ges f
}
bassNotesAnt = \relative f {
    \global
    \keysig
    
    ges4.~ \tieUp <bes, ges'>\breve*5/16~ \tieDown <des~ ges>4
    des4.~ des\breve*5/16~ des2.~
    des2~ des8~ des4~ des2
}
