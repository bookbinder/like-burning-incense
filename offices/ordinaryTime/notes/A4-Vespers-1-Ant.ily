\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_27_1-6"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is my light and my help;  " \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    whom shall I fear?
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 ees8 aes4 g8 aes f[ ees] des8 ees f4 
    \hideNotes f16 \unHideNotes   %so that I can align the * better
    f8[( g] \bar "" aes4) g8 f \bar "" ees4 \bar "||"  
}
altoNotesAnt = \relative c' {
    \keysig
    s8 \hideNotes ees8~ \unHideNotes ees2 des2. s16
    ees4( des2) bes4
}    
tenorNotesAnt = \relative g {
    \keysig
    aes4~ aes2~ aes2.~ s16
    aes4~ aes2 g4
}
bassNotesAnt = \relative c {
    \keysig
    c4~ c2 des2. s16 
    c4( bes2) ees4
}
