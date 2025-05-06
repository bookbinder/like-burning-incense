\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key b \major 
antiphon = "2"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_15"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed are the pure of heart,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    for they shall see God.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    gis8[ ais] gis fis gis \bar "" ais[ b] ais \bar "" gis4
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
    gis8 \bar "" fis fis \bar "" dis--[ fis] \bar "" gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    dis\breve*5/16 fis4. e4. s16
    dis2~ dis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    b\breve*5/16 cis4.~ cis4.~ s16
    cis2 b4 
}
bassNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*5/16 fis4. cis4. s16
    dis4 ais'4 gis4
}
