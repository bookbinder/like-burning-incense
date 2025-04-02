\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_86"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    O Lord, our "God, * " un -- wea -- ried is your love for us.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 ees8 aes[ g] aes f4( ees) \bar "'"
    ees8 des[ f] aes g aes f[ g] f ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16~ c\breve*5/16 des\breve*5/16~ des4. bes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ees\breve*5/16 aes\breve*5/16~ aes\breve*5/16~ aes4. g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes\breve*5/16~ aes\breve*5/16 bes\breve*5/16 des4. ees4
}
