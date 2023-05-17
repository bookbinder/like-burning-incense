\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_8"
psalmtone = "21"
psalmtonestruct = "33"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    How won -- der -- ful is your name, O Lord,  " * "
    in all cre -- a -- tion.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 ees8 aes g aes f ees \bar "" f[ ees] des \bar "" ees4
    \hideNotes ees16 \unHideNotes %so that I can align the * better
    ees8 \bar "" des[( ees] f4) f8 \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    c\breve*7/16 bes4. c4. s16
    des\breve*5/16 bes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ees\breve*7/16 des4. aes'4.~ s16
    aes\breve*5/16~ aes4 g
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    aes\breve*7/16~ aes4.~ aes4. s16
    bes\breve*5/16 ees2
}
