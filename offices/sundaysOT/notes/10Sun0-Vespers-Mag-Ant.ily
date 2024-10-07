\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "Mag."
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I de -- sire mer -- cy and not sa -- cri -- "fice. * "
    I did not come to call the vir -- tu -- ous but sin -- ners.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    des8 f aes4 bes8 aes aes g![ aes] f[ ees] des des4 \bar "'"
    ees8 f ees[ f] \bar "" ees[ f] ges \bar ""
    aes[ bes] bes aes([ aes aes]) f f4 \bar "'" des8 ees[ f ees des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*9/16~ des\breve*5/16 c2 des2.~
    des2~ des4. bes2 aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*9/16~ f\breve*5/16 aes2 ges2.
    f2 aes4. ges2 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*9/16 bes\breve*5/16 aes2 bes2. des2~ des4.~ des2~ des4
  }
