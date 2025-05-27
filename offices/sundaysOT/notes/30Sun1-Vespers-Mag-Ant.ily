\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "M"
psalmtone = "35"
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
    The pub -- li -- can went home at peace with God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for e -- very -- one who e -- xalts him -- self shall be hum -- bled,
    and who -- e -- ver hum -- bles him -- self shall be
    e -- xal -- ted.
}
sopNotesAnt = \relative e' {
    
    
    r8 aes8 g aes f ees f[ ees] des ees[ f] ees \bar "" f4( aes) \bar "'"
    aes8 \bar "" bes aes \bar "" ges!4 ges8 aes \bar "" bes8[ des] c bes4
    bes8 bes \bar "" bes[ aes] aes4 \bar "'" des,8 ees f[ ees] des \bar ""
    ges4 ges8 f \bar "" ees4 ees8 ees f des4 des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des4~ des2 s2. f\breve*5/16 des4~ des2~ des\breve*7/16 c2
    s\breve*9/16 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    
    
    f4 bes2 aes4. ges!4. aes\breve*5/16 ges4~ ges2~ ges\breve*7/16
    ees2 f\breve*5/16 bes2 ges\breve*5/16~ ges4 f4
}
bassNotesAnt = \relative c {
    
    
    des4~ des2~ des4.~ des4.~ des\breve*5/16 ges4 bes,2
    bes\breve*7/16 aes2 des\breve*5/16~ des2~ des\breve*5/16~ des2
}
