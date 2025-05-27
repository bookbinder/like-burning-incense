\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Magnificat"
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
    Tell your -- selves: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    we are use -- less ser -- vants, for we did on -- ly what we should have done.
}
sopNotesAnt = \relative e' {
    
    
    gis8[ fis] gis cis,([ e] dis4) \bar "'" dis8 e \bar "" fis4 e8 \bar ""
    e[ dis] dis4 \bar "'"
    dis8 dis[ e] \bar "" cis[ e] \bar "" gis4 gis8 \bar "" fis e fis e \bar ""
    dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis4. b2. cis4. b\breve*7/16 cis4 e4 cis2 b4
}
tenorNotesAnt = \relative g {
    
    
    e4. fis2. e4. fis\breve*7/16 gis4~ gis4.~ gis2~ gis4
}
bassNotesAnt = \relative c {
    
    
    cis4. b2.~ b4.~ b\breve*7/16 e4 cis4.~ cis2 gis4
}
