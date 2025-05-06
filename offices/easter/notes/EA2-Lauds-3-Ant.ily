\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_29"
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
    The Lord is en -- throned
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    as king for e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 gis8 gis[ a] gis gis gis4( fis)
    \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak fis[-- a]
    \allowBreak a
    \allowBreak \breathe
    \allowBreak fis8
    \allowBreak a
    \allowBreak a[ gis]
    \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s8^"Used different psalm tone. Does it work?"
    s4. s4 cis1 s16 e\breve*5/16 e2
}
tenorNotesAnt = \relative g {
    
    
    b2. a1~ s16 a\breve*5/16 b2
}
bassNotesAnt = \relative c {
    
    
    e2. a1 s16 cis,\breve*5/16 e2
}
