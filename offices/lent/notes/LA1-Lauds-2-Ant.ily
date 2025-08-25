\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "2"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Dan_3_57-88,_56"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Sing a hymn of praise to our God; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    praise him a -- bove all
    for e -- ver.
}
sopNotesAnt = \relative e' {
    des8[ ees] des des[ aes'] aes \bar "" aes4 aes8 ges \bar "" ges4( f) \bar "'"
    aes8[ bes] aes aes \bar "" ges[ aes] \bar "" ges([ f] ees4) f8 \bar ""
    ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des2.~ des2~ des2~ des2 bes4 ees\breve*5/16 aes,2
}
tenorNotesAnt = \relative g {
    f2. bes2 aes f ges4
    ~ ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
    des2.~ des2~ des~ des ees4 ces\breve*5/16 des2
}
