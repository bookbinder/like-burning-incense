\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "3"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Ps_48"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is great  "*"
    and wor -- thy to be praised in the ci -- ty of our God.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 ees8 aes[ g] aes f4    
    \hideNotes f16 \unHideNotes \bar ""   %so that I can align the * better
    f8 g f f f \bar "" ees4 ees8 ees \bar "" des[ f] f \bar ""
    f \bar "" f \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    r8 \hideNotes ees8~ \unHideNotes ees4.~ des\breve*7/16 s16
    c2 des\breve*5/16 bes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes4~ aes4.~ aes\breve*7/16 s16
    aes2~ aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c4~ c4. des\breve*7/16 s16
    aes2 bes\breve*5/16 ees4
}
