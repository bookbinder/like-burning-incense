\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "78"
psalmtonestruct = "43"
psalmnum = "Dan_3_52-57"
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
    Let us sing the hymn of the three young  "men * " which they
    sang in the fi -- ery fur -- nace, gi -- ving praise to God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8 ges aes[ bes] aes aes4 ges8 f \bar "" ges[ bes] aes[ ges] \bar ""
    aes4 aes8 ges8 \bar "" aes[-- bes ces bes] aes ges ges[ aes] aes
    \bar "" des,4 des \bar "'" des8[ ees] des \bar "" ces([ ees] ges4 f8)
    ees8 \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    f\breve*9/16 des2~ des2 ees\breve*9/16 r\breve*7/16 ces\breve*6/16 aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    des'\breve*9/16 bes2 f ges\breve*9/16~ ges\breve*7/16~ ges\breve*6/16 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*9/16~ des2~ des2 ces\breve*9/16 bes\breve*7/16 aes\breve*6/16 des4
}
