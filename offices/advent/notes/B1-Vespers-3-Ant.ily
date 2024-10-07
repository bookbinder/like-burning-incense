\version "2.18.2"
\include "../../../lbi_defs.ily"

keysig = \key g \major
antiphon = "3"
% this is a special musical setting, not a normal psalm tone
psalmnum = "Rev_19_1-7"
psalmtonestruct = "special"
psalmtone = "68"
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