\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "3"
psalmtone = "20"
psalmtonestruct = "42"
psalmnum = "Ps_149"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) score:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let the peo -- ple of Zi -- on " * " 
    re -- joice in their King, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    c8 des ees f ees \bar "" aes[ g f] f4 
    \hideNotes f16 \unHideNotes   %so that I can align the * better
     f8 \bar "" ees[ f] ees des \bar "" f4 \breathe
    ees8 des \bar "" des[ c] c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*5/16 des2. s16
    s2 bes2~ 
    bes4 aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*5/16~ aes2.~ s16
    aes2 f2~ 
    f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes\breve *5/16 bes2. s16
    c2 des4 
    bes4 f2
}
