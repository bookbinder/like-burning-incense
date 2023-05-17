\version "2.20.0"
\include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_119_105-112_(XIV_Nun)"
psalmtone = "48"
psalmtonestruct = "43"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Your word, O "Lord, * " 
    is the lan -- tern to light our way, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    \voiceOne
    r8 aes8 g aes f[( ees] des4) \bar "'" 
    des8 ees f ees des aes'[ bes] aes8 g[ aes] f ees f[ ees des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    \voiceTwo
    ees2 des2.~ des4. ees4. des2 bes4. aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    \voiceOne
    aes2~ aes4 f4 bes4~ bes4. aes4.~ aes2 ges4. f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    \voiceTwo
    c2 des2. bes4. c4. des2~ des4.~ des4
}
