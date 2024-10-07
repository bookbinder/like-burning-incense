\version "2.18.2"
\include "../../../lbi_defs.ily"
%CAN'T FIND THE PSALM TONE FOR THIS. 
%Is it a variant of 24. There might be a mistake in the original 24 because it sounds a bit off.
%Or maybe it's a variant of 31 or 36
%If none of the above it is the new tone 58 which needs to be harmonized

antiphon = "1"
psalmnum = "Ps_72_2-11"
psalmtone = "46"
psalmtonestruct = "33"
keysig = \key cis \minor
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