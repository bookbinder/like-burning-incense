\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = ""
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
    Is -- ra -- \ll "el, * " pre -- pare your -- self to meet the Lord,
    for he is co -- ming.
}
sopNotesAnt = \relative e' {

    
    
    gis8[ a] gis gis4 gis8 gis fis e fis fis[ a] a a4( gis) \bar "'"
    gis8 fis gis fis[ e] e4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    e2. cis2~ cis4. b\breve*5/16 cis4 gis2
}
tenorNotesAnt = \relative g {

    
    
    b2. a2~ a4. e\breve*5/16~ e4~ e2
}
bassNotesAnt = \relative c {

    
    
    e2.~ e2~ e4.~ e\breve*5/16 a,4 e2
}
