\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "3"
psalmtone = "52"
psalmtonestruct = "44"
psalmnum = "Ps_149"
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
    Trus -- ting in the Lord's pro -- "mise, * " the Vir -- gin Ma -- ry
    con -- ceived a child, and re -- mai -- ning a vir -- gin, she gave
    birth to the Sa -- vior. \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    f4 f8 ees f g[ aes] \bar "" bes[ aes g] g4 \bar "'" f8 ees f \bar ""
    g[ aes] g f g[ aes] g \bar "" f4 \bar "," f8 ees \bar ""
    f[ c'] c c \bar "" bes4 bes8 bes bes[ c] \bar ""
    f,8([-- aes g aes] \bar "" bes4) aes8 g \bar ""
    g8[ f] f4 \bar "||" ees8 \bar "" ees[ f] \bar "" f4 f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    s\breve*15/16 ees\breve*11/16 f2~ f2.~ f2 ees2 c2~ c8 ees4 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    c\breve*7/16 g\breve*8/16 bes\breve*7/16 c4 bes aes2~ aes2.~ aes2
    g4 bes4~ bes aes~ aes8 g4 bes aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    aes'\breve*7/16 ees\breve*8/16~ ees\breve*7/16 aes4 g f2 des2. c2 ees2
    f2~ f8~ f4~ f2
}
