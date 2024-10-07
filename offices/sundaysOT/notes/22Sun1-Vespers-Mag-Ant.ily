\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "Mag."
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    When you are in -- vi -- ted to a wed -- "ding, * " 
    go to the low -- est place, so that the one who in -- vi -- ted you can say:
    Friend, go up high -- er. Then you will be ho -- nored in the eyes of all
    who are at ta -- ble with you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8 des ees des ges4 ges8 ges8 bes bes[ aes] aes4 \bar "'"
    ges4 f8 ees ees[ f] ees des4 \bar "'" des4 des8 des \bar ""
    ees[ des] ces des ees[ ges] ges \bar "" ees ges aes4 \bar "'"
    aes8--([bes aes ces bes] aes4) ges8[ aes] bes4 bes8[ aes] aes4 r4 \bar "|"
    ges8 f ees f ges f ees f \bar "" ges[ f] ees ees([ f] ges4) ges8 f ees
    \bar "" des8 des ees des4 \bar "||"
    
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 des\breve*5/16~ des2 bes\breve*13/16 ces\breve*7/16 des4~ des
    ees\breve*7/16 des2~ des2. bes1~ bes4. ces4 des\breve*5/16 aes4.~ aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2 ges\breve*5/16 f2 ges\breve*7/16 aes\breve*6/16 ges\breve*7/16~
    ges4 f ges\breve*7/16~ ges2~ ges4 f2 ges1~ ges4. ges4~ ges\breve*5/16~
    ges4. f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f2 bes,\breve*5/16 des2 ees\breve*7/16 f\breve*6/16 ces\breve*7/16
    bes4 des ces\breve*7/16 bes4 ges des'2. ees1 des4. ces4
    bes\breve*5/16 des4.~ des4
}
