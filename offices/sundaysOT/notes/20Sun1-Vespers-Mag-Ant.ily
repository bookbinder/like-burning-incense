\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I have come to cast fire u -- pon the earth; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    how I long to see the flame leap up!
}
sopNotesAnt = \relative e' {
    
    
    f8 ges aes[ bes] aes aes[ bes] ces4 ces8 ces bes bes4( aes) \bar "'"
    ges8[ aes] ges f[ ges] ees ees([ f] ges4) ees8 \bar "" aes8[ bes]
    aes8[ ges] \bar "" aes4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des4 des\breve*5/16 ees\breve*5/16 des2 bes2. ees\breve*5/16
    des2~ des4
}
tenorNotesAnt = \relative g {
    
    
    aes4 f\breve*5/16 ges\breve*5/16 f2 ges2.~ ges\breve*5/16~
    ges2 f4
}
bassNotesAnt = \relative c {
    
    
    des4~ des\breve*5/16~ des\breve*5/16~ des2 ees2. ces\breve*5/16 bes2 des4
}
