\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "43"
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
    The day has come at "last * "  when Ma -- ry will bring forth her
    first -- born Son.
}
sopNotesAnt = \relative e' {

    
    
    r8 e8 b cis cis[ gis'] a gis4 \bar "'"
    gis8 gis fis e fis[ gis fis] fis4 fis8 e[ fis] dis[ e] cis4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    s2 cis4. e2. cis2. b2 gis4
}
tenorNotesAnt = \relative g {

    
    
    gis2~ gis4. b2. a2. fis2 e4
}
bassNotesAnt = \relative c {

    
    
    e2~ e4.~ e2. a4. a,4. b2 cis4
}
