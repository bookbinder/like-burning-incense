\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Isa_12_1-6"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord has worked mar -- vels for us; "*"
    make it known to the ends of the world.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 des8 ges f ges \bar "" ees f ges aes4
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \bar "" aes8[ bes] aes \bar ""  ces[( bes] aes4) 
    ges8 f \bar "" ees[ ges] f ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    r8 des8~ des4 s8 ees\breve*5/16 s16
    des4. ees2.~ ees2 aes,2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    ges4~ ges4.~ ges\breve*5/16 s16
    f4. ges2.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    aes1~ aes4 s16
    des4. ces2. aes2 des
}
