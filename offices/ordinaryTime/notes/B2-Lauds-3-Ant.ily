\version "2.18.2"
\include "../../../lbi_defs.ily"
 
antiphon = "3"
psalmnum = "Ps_19_2-7"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    The vaults of heav -- en "*" ring with your praise, O Lord.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 des8 ges[ f] ges aes[ ces bes aes] aes4
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \bar ""
    ges4 f8 ges \bar "" ees8[ des] ces8 \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    r8 des8~ des4. ees2. s16
    bes2 ces4. aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ges4~ ges4.~ ges2.~ s16
    ges2~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    bes4~ bes4. ces2. s16
    ees2 aes,4. des2
}
