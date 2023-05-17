\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_29"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- dore the Lord " * "
    in his ho -- ly court.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 fis[ gis] gis fis([ gis] a4)  
    \hideNotes a16 \unHideNotes   %so that I can align the * better
    a8 a gis[ a] fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    r8 \hideNotes e8~ \unHideNotes e4.~ e2. s16
    cis4. b4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 b4. a2.~ s16
    a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4~ e4. cis2. s16
    a4. e'4
}
