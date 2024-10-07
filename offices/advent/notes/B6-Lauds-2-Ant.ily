\version "2.20.0"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Hab_3_2-4,_13a,_15-19"
psalmtone = "20"
psalmtonestruct = "42"
keysig = \key f \minor
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