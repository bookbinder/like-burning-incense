\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Isa_42_10-16"
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
    Sing a new song to the "Lord; * " pro -- claim his prai -- ses
    to the ends of the earth.
}
sopNotesAnt = \relative e' {

    
    
    ees8[ f] ees ees[ aes] aes4 g8 f f4( ees) \bar "," ees8 ees[ f]
    ees des[ f aes] aes4 aes8 aes \bar "" g[ aes] g f \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    s4 s4. s2 s2 s2 des\breve*7/16~ des2 bes4
}
tenorNotesAnt = \relative g {

    
    
    c\breve*9/16 bes\breve*5/16 aes4.~ aes\breve*7/16~ aes2 g4
}
bassNotesAnt = \relative c {

    
    
    aes'\breve*9/16 g\breve*5/16 c,4. f\breve*7/16 des2 ees4
}
