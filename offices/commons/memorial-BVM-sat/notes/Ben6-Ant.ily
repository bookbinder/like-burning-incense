\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "6"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = des
master-to-pitch = d

text = \lyricmode {
    \set includeGraceNotes = ##t
    You are the glo -- ry of Je -- ru -- sa -- "lem, * " the joy of Is -- ra -- el;
    you are the fair -- est ho -- nor of our race.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4 des,8 ees ges f ees des f[ aes] aes aes4 \bar ","
    aes8 \bar "" ges[ f ees] des \bar "" f[ aes]
    aes aes4 \bar "," bes4 bes8
    aes \bar "" bes[ aes] ges \bar ""
    aes aes ges aes des,4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des2~ des4 r4 f4. des4.~ des4 r4 f\breve*5/16 des2~ des4.~ des2~ des4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 bes aes4. f4. bes2 aes\breve*5/16 ges2~ ges4.~ ges2 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*8/16~ des2.~ des2~ des\breve*5/16 ges2 ges,4. bes2 des4
}
