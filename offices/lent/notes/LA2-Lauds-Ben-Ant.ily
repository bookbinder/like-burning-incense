\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "B"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    You have been blessed by my Fa -- ther; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    come and re -- ceive
    the king -- dom pre -- pared for you from the foun -- da -- tion
    of the world.
}
sopNotesAnt = \relative e' {
    aes4 aes8 aes aes([ bes] aes4) f8 ges ees[ des] des4 \bar ","
    ees8[ f] ees ees \bar "" f[ aes] bes \bar "" des4 c8 bes \bar ""
    bes[ c] bes \bar "" aes4 aes8 ges f \bar "" ges[ aes] ges f ees
    \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*14/16 bes2 des4.~ des2~ des4.~ des\breve*5/16 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    f\breve*14/16 ges2 f4. ges2~ ges4. f\breve*5/16 ees\breve*5/16 f2
}
bassNotesAnt = \relative c {
    des\breve*14/16~ des2~ des4. bes2 ges4. des'\breve*5/16~ des\breve*5/16~ des2
}
