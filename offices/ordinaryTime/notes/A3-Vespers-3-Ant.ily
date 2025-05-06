\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "3"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, you have made us a king -- dom  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    and priests for God our Fa -- ther.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    e4 b8 cis cis[ gis'] fis e fis[ gis fis] fis4 
    \hideNotes fis16 \unHideNotes \bar ""  %so that I can align the * better
    fis8 \bar "" gis[ fis] e \bar "" fis4 \allowBreak e8 \bar "" \allowBreak
    dis[ cis] \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s1 s4. s4 s16
    s8 e4. cis4. a4 gis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 fis gis2 b2. s16
    gis4. a4. fis4 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4 dis e2 dis2. s16
    cis2.~ cis2
}
