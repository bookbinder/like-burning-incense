\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_63_2-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The splen -- dor of Christ
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    ri -- sen from the dead
    has shown on the peo -- ple re -- deemed by his blood,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 b8 e dis e \bar "" fis4
    \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak gis8[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak e \bar ""
    \allowBreak fis4 \bar "'"
    \allowBreak fis8 \bar ""
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e \bar ""
    \allowBreak e4
    \allowBreak gis8
    \allowBreak b
    \allowBreak a[ gis]
    \allowBreak fis
    \allowBreak e \bar ""
    \allowBreak fis--([ gis a gis] fis4) \bar "'"
    \allowBreak fis8 \bar ""
    \allowBreak fis[ gis] \bar ""
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4 s4. s4 s16 e\breve*5/16 dis4. cis2
    e\breve*8/16 cis\breve*7/16~ cis4 b2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*5/16 a4 s16 b\breve*5/16~ b4. e,2~ e\breve*8/16~
    e\breve*7/16 a4~ a4 gis4
}
bassNotesAnt = \relative c {
    
    
    e\breve*5/16~ e4~ s16 e\breve*5/16 b4. a2
    gis\breve*8/16 a\breve*7/16~ a4 e'2
}
