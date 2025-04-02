\version "2.18.2"
\include "../../../lbi_defs.ily"

keysig = \key ges \major
antiphon = "1"
psalmnum = "Ps_118"
psalmtone = "60"
psalmtonestruct = "33"
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Zi -- on is our migh -- ty ci -- ta -- "del, * " our sa -- ving
    Lord its wall and its de -- fense; throw o -- pen the gates,
    for our God is here a -- mong us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    des8[ aes'] aes4 ges8 aes ces[ bes] aes bes aes aes4 \bar "'"
    aes8 aes[ bes] \bar "" aes ges[ f] \bar "" ees ges4 \bar ""
    ees8 f ees \bar "" ees4( des) r4 \bar "|"
    des4 des8 ees des \bar "" ces8([ ees] ges4) \bar "'"
    f8 ges \bar "" aes ges f ees \bar "" ees[ des] \bar "" des4 \bar "'"
    ees8 \bar "" ees[ f] \bar "" des4 des \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    des2. ees4. des\breve*5/16 ees4. des4. bes4. ces4 aes2.
    bes\breve*5/16 ces2.~ ces2 aes4~ aes4. bes4 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f2 bes4 ges4. f\breve*5/16 ges4.~ ges~ ges~ ges4 f2.
    ges\breve*5/16~ ges2.~ ges2~ ges4 f4. ges4~ ges f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des2.~ des4.~ des\breve*5/16 ces4. bes ees ces4 des2.
    ges\breve*5/16 ees2. ces2 des4~ des4.~ des4~ des2
}