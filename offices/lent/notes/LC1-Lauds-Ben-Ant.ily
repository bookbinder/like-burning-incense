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
    De -- stroy this tem -- ple, says the Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and in three days
    I will re -- builld it. He was spea -- king of the tem -- ple of
    his bo -- dy.
}
sopNotesAnt = \relative e' {
    r8 des8 f ges \bar "" aes4 aes8 \bar "" ges8[ bes] bes \bar "" aes4 \bar "'"
    aes8 aes \bar "" ges8[ aes bes] bes4 bes8 aes bes \bar ""
    bes8[ c bes aes] \bar "" aes4 r4 \bar "|"
    des,8 des \bar "" ees8[ f] ees ees f \bar "" ges4 ges8 f ees
    \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 des8~ des4~ des4. ges4. des2 bes\breve*8/16 ees2 des2
    aes4 c\breve*5/16 des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    f2~ f4. bes4. f2 ges\breve*8/16~ ges2 f2~
    f4 ges\breve*5/16~ ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
    des2~ des4.~ des4.~ des2 ees\breve*8/16
    c2 des2~ des4 c\breve*5/16 bes\breve*5/16 des2
}
