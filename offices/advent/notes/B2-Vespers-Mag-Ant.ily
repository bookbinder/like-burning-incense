\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "37"
psalmtonestruct = "33"
antKeysig = \key ges \major
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    See, your King "comes, * " the mas -- ter of the earth;
    he will shat -- ter the yoke of your sla -- very.
}
sopNotesAnt = \relative fis' {

		
    
    
    des8[ aes'] aes ges[ f] f4 \bar "'"
    aes8 bes aes ges aes aes4( des,) \bar ","
    des8 ees ges4 f8 ees ees[ f] ees des ees4 des \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    des4.~ des\breve*5/16~ des2~ des2.~ des2 bes aes
}    
tenorNotesAnt = \relative g {

    
    
    f4. aes\breve*5/16 ges4 bes aes2. ges2~ ges f
}
bassNotesAnt = \relative c {

    
    
    des4.~ des\breve*5/16 ges2 f2. bes,2 ges des'
}