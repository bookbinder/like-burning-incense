\version "2.20.0"
% %% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_62"
psalmtone = "50"
psalmtonestruct = "33"
keysig = \key f \minor
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ea -- ger -- ly we a -- \ll "wait * " _
    the ful -- fill -- ment of our hope,
    the glo -- rious com -- ing of our Sav -- ior.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    aes8 g f ees f \bar "" g[( aes] bes4) 
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    bes8 aes bes[ c] bes \bar "" aes c c4( bes) \bar "'"
    bes8 aes[ bes] aes \bar "" g g g ees f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    c\breve*5/16 f\breve*9/16~ s16 f4 g\breve*1/4
    s8 des4.~ des2 c2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes\breve*5/16 bes\breve*9/16 s16 des4 bes\breve*1/4
    s8 des4. bes2~ bes4 aes
}
bassNotesAnt = \relative c {
    \keysig
    \global
    f\breve*5/16 des\breve*9/16~ s16 des4 ees\breve*1/4
    s8 f4.~ f2~ f
}
