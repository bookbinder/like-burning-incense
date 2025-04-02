\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Son, re -- mem -- ber the good "things * " 
    you re -- ceived in your life -- time, and the bad things La -- za -- rus
    re -- ceived in his.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes8[ g] f g f ees f--[ g aes] bes4 \bar "'"
    aes8 aes \bar "" g[ bes] aes g4 \bar "" g8[ f] f4 \bar "'"
    f8 f g--[ aes bes] bes4 \bar "" aes8 g f f \bar ""
    ees[ c^"?"] ees f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c2. des4. f4 ees4~ ees\breve*5/16 c2~ c4 f\breve*5/16 des2 c4.~ c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2.~ aes4.~ aes4~ aes4 bes\breve*5/16 aes2~ aes4~ aes\breve*5/16~ aes2 g4. aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f4. ees4. des4.~ des4 c4 ees\breve*5/16 f2 ees4 des\breve*5/16 bes2 c4. f4
}
