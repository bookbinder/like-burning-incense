\version "2.20.0"

antiphon = "1"
psalmtone = "48"

frompitch = a
topitch = a

global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    Your word, O "Lord, * " is the lan -- tern to light our way, al -- le -- lu -- ia.
}


sopNotesAnt = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    r8 aes8 g aes f[( ees] des4) \bar "'" 
    des8 ees f ees des aes'[ bes] aes8 g[ aes] f ees f[ ees des] des4 \bar "||"
}

altoNotesAnt = \relative c' {
    \global
    \voiceTwo
    ees2 des2.~ des4. ees4. des2 bes4. aes4

}

tenorNotesAnt = \relative g {
    \global
    \voiceOne
    aes2~ aes4 f4 bes4~ bes4. aes4.~ aes2 ges4. f4

}

bassNotesAnt = \relative c {
    \global
    \voiceTwo
    c2 des2. bes4. c4. des2~ des4.~ des4

}
