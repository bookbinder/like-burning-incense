\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_80"
psalmtone = "27"
psalmtonestruct = "33"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Stir up your migh -- ty pow -- er, Lord;  "*" 
    come to our aid.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    aes4 g8 aes \bar "" f ees g f \bar "" ees4
    \hideNotes ees16 \unHideNotes %so that I can align the * better
    \bar "" f4 f8 f ees4   \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    c2 des2 c4 s16 bes2~ bes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ees2 f aes4 s16 f2 g4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    aes1~ aes4 s16 des2 ees4
}
