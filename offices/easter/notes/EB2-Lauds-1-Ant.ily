\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "17"
psalmtonestruct = "44"
psalmnum = "Ps_42"
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
  As a deer longs for flow -- ing streams,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  so my soul longs for you, my God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    b8 cis e4 e8[ gis] gis fis[ gis fis] e fis([ gis] fis4) 
    \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak e[ gis]
    \allowBreak fis[ gis]
    \allowBreak a
    \allowBreak a4
    \allowBreak gis8
    \allowBreak gis4( fis) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    b\breve*7/16 cis\breve*8/16 s16
    s4. s4 e\breve*6/16 cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*7/16 a\breve*8/16 s16 b4. gis4 a\breve*6/16~
    a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
    
    
    e\breve*7/16~ e\breve*8/16 s16 dis4. cis4~ cis\breve*6/16
    a\breve*7/16 e'2
}
