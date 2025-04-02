\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Dan_3_57-88,_56"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    From the midst of the flames,  "*"
    the three young men cried out with one voice: 
    Bless -- ed be God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    cis8 cis cis[ gis'] fis gis \bar "" b4( gis) \noBreak
    \hideNotes gis16 \unHideNotes   %so that I can align the * better
    gis8 fis[ gis] fis e8 \bar "" dis8[ e] \allowBreak dis
    \allowBreak dis \bar "" \allowBreak  cis[ gis'] gis4
    \breathe \bar ""
    \bar "" b8[ cis] b gis \bar "" fis4 \breathe \bar ""
    e8 cis \bar "" fis[ e cis] cis4 \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    cis4~ cis2 b\breve*5/16 s16
    cis\breve*1/2 cis4 dis4 
    cis2 dis4 
    cis4 \bar "" a4. gis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    a4 gis2 fis\breve*5/16 s16
    gis\breve*1/4 fis2 
    e4 gis4 a2~ a4 
    gis4 \bar "" fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    fis4 e2 dis\breve*5/16 s16
    cis\breve*1/4~ cis2~ cis4 b4 
    a2 b4 
    cis4~ \bar "" cis4.~ cis4
}
