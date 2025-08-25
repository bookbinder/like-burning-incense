\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "2"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Dan_3_57-88,_56"
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
    Springs of wa -- ter, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    bless the Lord;
    praise and e -- xalt him a -- bove all for -- e -- ver.
}
sopNotesAnt = \relative e' {
    des8[ ees] des des[ aes'] aes4 \bar "'"
    ges8[ bes] bes aes4 \bar ","
    aes8 bes aes ges f ees ees[ f] \bar "" ges4 aes8
    \bar "" aes[-- des,] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*7/16~ des4.~ des4 ees\breve*8/16
    des4. aes2
}
tenorNotesAnt = \relative g {
    f\breve*7/16 bes4. f4 ges\breve*8/16~ ges4.~ ges4 f4
}
bassNotesAnt = \relative c {
    des\breve*7/16~ des4.~ des4 ces\breve*8/16 bes4. des2
}
