\version "2.18.2"
\include "../../../lbi_defs.ily"

keysig = \key aes \major
psalmnum = "Ps_42"
psalmtone = "29"
psalmtonestruct = "33"
antiphon = "1"
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord pro -- "claims: * " Re -- pent, the king -- dom of God
    is u -- pon you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 ees8 g[ aes] f f4 \breathe ees8 aes4 \bar "'"
    aes8 g aes f g4 g8 f f[ ees] ees4 \bar "'"
    f8 f[ g] ees4 ees \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    bes4^"slightly diff psalm tone" des4.~ des4. ees4. des\breve*7/16 bes4~ bes4. c4 bes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g4 f4. aes4.~ aes4.~ aes\breve*7/16~ aes4 g4. aes4~ aes g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    ees4 des4.~ des4. c4. bes\breve*7/16 ees4~ ees4.~ ees4~ ees2
}