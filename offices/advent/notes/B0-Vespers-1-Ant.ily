\version "2.20.0"
\include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_119_105-112_(XIV_Nun)"
psalmtone = "36"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    New ci -- ty of Zi -- "on, * " let your heart sing for joy;
    see how hum -- bly your King comes to save you.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    aes4 aes8 aes ges ces[ bes aes] aes4 \bar "'" aes8 aes \bar "" ges[ ees]
    f ees \bar "" ees4( des) r4 \bar "|" des8[ aes'] \bar "" ges aes([ bes] aes4 des,8)
    des4 des8 \bar "" ees[ f] \bar "" ges4 f8 \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16 ees4. f4 des4 bes2 aes2. des4.~ des4~ des4. aes4.
    ces4 des4. aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*5/16 ges4. aes4 f4 ges2~ ges4( f2)
    aes4. ges4 f2. ges4~ ges4.~ ges4 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16~ des4.~ des4~ des4 ees4 ces4 des2.
    f4. ges4 des2. ces4 bes4. des2
}