\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "NuncDimittis"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  Al -- le -- lu -- "ia, * " al -- le -- lu -- ia, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 fis gis e4 \bar "'" fis8[ gis] fis e cis4( b) \bar "'"
    e8 fis[ gis] fis[ e] e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2. cis2 s2 s8 cis4 a gis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2.~ e2~ e4( dis4.) e4~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2. a,2 b4~ b4. a4 e2
}
