\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "B"
psalmtone = "33"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    Who -- e -- ver gives you a cup of wa -- ter in my name 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    be -- cause you are a fol -- low -- er of Christ, shall not go
    un -- re -- war -- ded, says the Lord.
}
sopNotesAnt = \relative e' {
    
    
    r8 aes8 f ges aes[ bes] aes ges aes[ f] des \bar ""
    ees[ f] ees des \bar "" f[ aes] aes4 \bar "'"
    aes8 \bar "" bes aes ges aes \bar "" bes bes bes c \bar "" bes4( aes) \bar "'"
    aes8 \bar "" c--[ des] bes aes ges \bar "" aes[ des,] des4 \bar "'"
    ees8[ f] ees \bar "" ees4( des4) \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*11/16 s2 f\breve*5/16 des2~ des~ des\breve*5/16~ des~ des2
    bes4. aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*11/16 ges2 aes\breve*5/16 ges2~ ges f\breve*5/16 ges\breve*5/16
    f2 ees4. f2
}
bassNotesAnt = \relative c {
    
    
    des\breve*11/16~ des2~ des\breve*5/16 ges,2~ ges2 des'\breve*5/16
    bes\breve*5/16 aes2 ges4. des2
}
