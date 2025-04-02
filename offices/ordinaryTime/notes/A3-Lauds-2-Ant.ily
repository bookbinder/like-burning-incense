\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major 
antiphon = "2"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Tobit_13_1-8"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise the e -- ter -- nal \ll "King  * " _
    in all your deeds.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
     g8[ a] g a c b a4 
    \hideNotes a16 \unHideNotes   %so that I can align the * better
     a8 b a a4( g) \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2. f4.~ s16
    f4 d2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    c2.~ c4.~ s16
    c4~ c4( b)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2. f4. s16
    d4 g2
}
