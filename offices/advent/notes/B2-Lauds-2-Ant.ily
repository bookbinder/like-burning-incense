\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Sirach_36_1-5,_10-13"
psalmtone = "39"
psalmtonestruct = "43"
keysig = \key gis \minor
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