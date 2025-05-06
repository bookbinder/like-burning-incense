\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key b \major 
antiphon = "1"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_30"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I cried to you, Lord,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    and you healed me; I will praise you for ev -- er.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 dis8 gis[ fis] gis ais4 b8[( ais] gis4)
    \hideNotes ais16 \unHideNotes \bar ""   %so that I can align the * better
    fis8 gis \bar "" ais4 ais4 \bar "" ais8 b \bar ""\allowBreak  gis[ ais]
    \allowBreak gis \bar "" \allowBreak 
    fis \bar "" \allowBreak gis4 gis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    r8 \hideNotes dis8~ \unHideNotes dis4.~ dis4 cis2.~ s16
    cis2 fis4~ fis2 dis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4~ gis4. fis4 gis2. s16
    fis2 cis'4~ cis2~ cis4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    b4~ b4. dis4 e2. s16
    fis2~ fis4 dis2 gis
}
