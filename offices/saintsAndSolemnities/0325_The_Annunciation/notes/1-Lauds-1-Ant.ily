\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Ps_63_2-9"
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
    The an -- gel Ga -- bri -- \ll "el * " was sent to the Vir -- gin Ma -- ry,
    who was en -- gaged to be mar -- ried to Jo -- seph. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    r8 f8 des ees \bar "" ees[ f] ees ees4 ees8 \bar "" f[ aes] aes aes bes aes
    \bar "" g[ aes f] f4 \bar "," f8 f g \bar "" aes4 g8 f g4 f8 f \bar ""
    ees4 ees \bar "||" f8 \bar "" f[ g] \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    aes2 c2. ees\breve*6/16 des\breve*8/16~ des\breve*8/16 bes2~
    bes8 c4 bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    f2 aes2.~ aes\breve*6/16~ aes\breve*8/16~ aes\breve*8/16~ aes4 g~
    g8 aes4~ aes g
    
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    des2 f2. c\breve*6/16 des\breve*8/16 bes\breve*8/16 ees2~
    ees8~ ees4~ ees2
}
