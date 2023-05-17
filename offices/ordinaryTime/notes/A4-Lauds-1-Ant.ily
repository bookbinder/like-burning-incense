\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "1"
psalmtone = "49"
psalmtonestruct = "33"
psalmnum = "Ps_36"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     O Lord, " * " 
     in your light we see light it -- self.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 aes8 g[( aes] f4) 
    \hideNotes f16 \unHideNotes   %so that I can align the * better
    aes8 bes[ aes] aes4 f8[ aes] g[ aes] f[( ees] f4) ees8 f4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees4 des\breve*5/16~ s16
    des2.~ des4 c\breve*5/16 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes\breve*5/16 s16
    f2.~ f4~ f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes4~ aes\breve*5/16 s16
    f2.~ f4~ f\breve*5/16~ f2
}
