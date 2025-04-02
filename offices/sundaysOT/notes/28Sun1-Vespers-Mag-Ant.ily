\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
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
    One of them, re -- a -- li -- zing that he had been "cured, * " 
    re -- turned prai -- sing God in a loud voice, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    des8[ aes'] aes aes4 aes8 aes f ges aes \bar ""
    aes4 aes8 bes ces([ bes] aes4) \bar "'"
    aes8 \bar "" ges([ ees] f4) \bar "" ees8[ f] ees \bar ""
    des[ ees] des des \bar "" ces[ ees ges] ges4 \bar "'"
    ees8 \bar "" f[ ees] \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des\breve*10/16 ees\breve*9/16 bes2~ bes4. s2 ces2.~ ces4 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f\breve*10/16 ges\breve*9/16~ ges2~ ges4. aes2 ges2.~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des\breve*10/16 ces\breve*9/16 ees2~ ees4. f2 ees2. ces4 des2
}
