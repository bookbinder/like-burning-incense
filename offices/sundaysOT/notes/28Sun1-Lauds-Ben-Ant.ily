\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You have left e -- very -- thing to fol -- low me; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you will have it all re -- turned a hun -- dred -- fold and will
    in -- her -- it e -- ter -- nal life.
}
sopNotesAnt = \relative e' {
    
    
    e4 e8 dis[ e] cis[ gis'] gis gis4 fis8 b[ ais] gis gis4 \bar "'"
    gis8 gis \bar "" fis[ gis] fis gis4 fis8 \bar "" e[ gis] gis \bar ""
    gis fis fis4 \bar "'"
    fis8 dis e \bar "" fis4 fis8 fis fis e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    cis\breve*5/16~ cis4. e2.~ e2 dis2. e4. \parenthesize b\breve*7/16
    cis2. b4
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*5/16 gis4. b cis b2~ b2. gis4. b\breve*7/16 gis2.~ gis4
}
bassNotesAnt = \relative c {
    
    
    cis\breve*5/16 e4.~ e2.~ e2 b2. cis4. dis\breve*7/16 e2 cis4 gis
}
