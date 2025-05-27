\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "45"
psalmtonestruct = "42"
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
    Where your trea -- sure is, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    there is your heart, says the Lord.
}
sopNotesAnt = \relative e' {
    
    
    cis4 e8 gis[ fis] gis cis,4 \bar "'" cis8[ e] dis e \allowBreak fis4 \allowBreak \breathe e8 dis
    \allowBreak e([ dis] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*8/16 a2 cis4 b4 gis2
}
tenorNotesAnt = \relative g {
    
    
    e\breve*8/16~ e2 a4 fis4~ fis( e)
}
bassNotesAnt = \relative c {
    
    
    cis\breve*8/16 a2. b4 cis2
}
