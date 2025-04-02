\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "M"
psalmtone = "24"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus said to Pe -- "ter: * " 
    I do not tell you to for -- give on -- ly se -- ven times, but
    se --ven -- ty times se -- ven.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes8[ es] aes f[ ges] aes ees[ des] des4 \bar "'"
    f8 ges aes4 bes8 aes ges aes \bar "" bes4 bes8^"?"[ des^"?"] c \bar "" c bes bes4 \bar "'"
    bes8 \bar "" aes f des \bar "" ees[ f] \bar "" ees4 des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des2. bes des2.~ des\breve*5/16~ des\breve*5/16 des4. bes4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f2.~ f des2.~ des\breve*5/16 ges\breve*5/16 f4. ges4 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2. bes f ges\breve*5/16~ ges\breve*5/16 des'4.~ des4~ des2
}
