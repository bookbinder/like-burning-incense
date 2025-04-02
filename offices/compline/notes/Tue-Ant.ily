\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor 
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_143_1-11"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Do not hide your face from "me; * " in you I put my trust.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 aes8 g[ aes] f f ees f g4 \bar "'"
    g8 aes[ bes] aes g[ f] ees[ g] f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*8/16 ees4. des\breve*5/16 ees4 c4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*8/16 bes4.~ bes\breve*5/16 g4 aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*8/16 ees4. bes\breve*5/16 c4 f
}
