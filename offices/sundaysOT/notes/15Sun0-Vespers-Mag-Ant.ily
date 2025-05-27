\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
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
    The seed is the word of God; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the so -- wer is Christ; all who lis -- ten to his words
    will live for e -- ver.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 cis([ gis' a] gis4) gis8 gis fis[ gis] fis fis4 \bar "'"
    fis8 fis4 e8 e dis4 \bar "'" dis8[ e] dis \bar "" fis8 fis fis e \bar ""
    dis8([ e] fis4) fis8 \bar "" gis([ fis] gis4) e8 \bar "" dis8--[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s8 cis8~ cis4. e2~ e4. dis4. cis2 b4~ b4. cis2 dis4 b4. cis\breve*5/16 a4 gis
}
tenorNotesAnt = \relative g {
    
    
    a4 gis4. b2~ b2. gis2~ gis4 fis4. e2 fis4( dis4.) e\breve*5/16~ e2
}
bassNotesAnt = \relative c {
    
    
    fis4 e4.~ e2 b2. cis2 gis4 b4.~ b2~ b4~ b4. a\breve*5/16 cis2
}
