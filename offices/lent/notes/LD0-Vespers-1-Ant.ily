\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "28"
psalmtonestruct = "43"
psalmnum = "Ps_122"
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
    Let us go to God's house 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    with re -- joi -- cing.
}
sopNotesAnt = \relative e' {
    aes8^"Used different psalm tone. Does it work?"
    aes g aes f[ ees des] \bar "" ees4 ees8 f \bar ""
    ees8[-- f ees des] \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*11/16 bes2 aes4
}
tenorNotesAnt = \relative g {
    f\breve*7/16 aes2 f2~ f4
}
bassNotesAnt = \relative c {
    des\breve*7/16 c2 des2~ des4
}
