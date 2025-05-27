\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Son of Man did not come to be served but to serve, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and to give his life as a ran -- som for ma -- ny.
}
sopNotesAnt = \relative e' {
    
    
    r8 gis8 fis[ gis] ais gis4 gis8 fis[ gis] b[ gis] fis e \bar ""
    fis4 fis8 e \bar "" dis4
    \bar "'" dis8 dis \bar "" e[ dis] cis cis[ gis'] gis fis gis4 gis8 fis
    \bar "" e[ dis] \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    dis4 cis4. dis\breve*9/16 cis2 b gis\breve*11/16 cis4 b
}
tenorNotesAnt = \relative g {
    
    
    b4 ais4. b\breve*9/16 gis2~ gis e\breve*11/16 gis2
}
bassNotesAnt = \relative c {
    
    
    gis'4~ gis4.~ gis\breve*9/16 cis,2 gis cis\breve*11/16 gis2
}
