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