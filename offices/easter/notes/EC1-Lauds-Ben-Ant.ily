\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
  It was or -- dained
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that Christ should suf -- fer, and on the third day rise from
  the dead, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 e8 cis e fis([ e] dis4)
    \noBreak \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak dis8
    \allowBreak dis[ e]
    \allowBreak dis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "'"
    \allowBreak cis8
    \allowBreak dis
    \allowBreak e
    \allowBreak fis[ gis fis]
    \allowBreak fis4
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e4( dis) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis2 b4~ b2. s16 s\breve*7/16 b\breve*5/16
    gis2 b\breve*5/16 cis4~ cis b
}
tenorNotesAnt = \relative g {
    
    
    e2 dis4 fis2. s16 gis\breve*7/16 fis\breve*5/16 e2 gis\breve*5/16
    e4 gis2
}
bassNotesAnt = \relative c {
    
    
    cis2 b4~ b2. s16 e\breve*7/16 dis\breve*5/16 cis2 gis\breve*5/16~
    gis4~ gis2
}
