\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_49_2-13"
psalmtone = "34"
psalmtonestruct = "33"
keysig = \key des \major
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    " * "
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne

}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo

}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne

}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo

}