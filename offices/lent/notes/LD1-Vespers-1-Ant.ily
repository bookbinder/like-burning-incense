\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "31"
psalmtonestruct = "43"
psalmnum = "Ps_110_1-5,_7"
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
    God has ap -- poin -- ted Christ 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to be the judge of the
    li -- ving and the dead.
}
sopNotesAnt = \relative e' {
    aes4 f8 ges aes[ bes] aes \bar "" ges4 ges8 f ges \bar ""
    aes[ bes] aes ges \bar "" aes[ bes] aes aes aes des,4 \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*7/16 bes\breve*5/16 ees2 ces\breve*5/16 des4
}
tenorNotesAnt = \relative g {
    f\breve*7/16 ges\breve*5/16~ ges2~ ges\breve*5/16 f4
}
bassNotesAnt = \relative c {
    des\breve*7/16 ees\breve*5/16 ces2 aes\breve*5/16 des4
}
