\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "Mag"
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
    You are the light of the "world. * "
    Let your light shine be -- fore men, that they may see your good works
    and give glo -- ry to your hea -- ven -- ly Fa -- ther.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees8[ aes] g aes f[ ees] des ees f4( ees)
    ees8 ees g([ aes] bes4) \bar "" aes8[ f] aes aes[ bes] g4 \bar "'"
    bes8 \bar "" bes4 g8 bes[ c] bes \bar "" aes[ g f] ees4 \bar "'"
    ees8 f[ ees] des4 des8 f g aes4 g8 f f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees2 des c2. ees2~ ees\breve*5/16~
    ees4.~ \break ees2. f4. s4 s4. des\breve*5/16~
    des2 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2~ aes~ aes2. g2 c\breve*5/16
    bes4.~ bes2. c4.~ c4.~ c4 aes\breve*5/16~
    aes2~ aes4 ees4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 des aes2. ees'2~ ees\breve*5/16~
    ees4. g2. f4. aes4.~ aes4 f\breve*5/16
    bes,2 ees
  }
