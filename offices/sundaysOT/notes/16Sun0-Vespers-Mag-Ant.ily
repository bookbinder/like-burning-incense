\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "Mag."
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The king -- dom of hea -- ven is like "yeast * " 
    which a wo -- man took and knea -- ded in -- to three mea -- sures of flour
    un -- til all the dough had ri -- sen.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees aes g aes f ees des ees[ f] f4( ees) \bar "'"
    ees8 ees g[ aes] bes \bar "" bes4 aes8 \bar "" g aes f ees \bar ""
    des4 f8 g f ees4 \bar "'"
    ees8 ees \bar "" des[ c] des ees4 f8 \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 s1 s2 s4 g'4. f des2~ des\breve*12/16 des4. bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes4.~ aes\breve*5/16 g2. bes4.~ bes aes2 f\breve*5/16
    aes2~ aes2.~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4~ c4. des\breve*5/16 ees2.~ ees4. des4.~ des2~ des\breve*5/16 c2 bes2. ees2
}
