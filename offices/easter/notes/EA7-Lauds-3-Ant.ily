\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_117"
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
  Strong and stead -- fast
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is his love for us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis4 b8 cis[ gis'] gis4
    \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak fis8
    \allowBreak e
    \allowBreak dis[ e]
    \allowBreak fis
    \allowBreak fis4 \bar "'"
    \allowBreak dis8
    \allowBreak e[ dis]
    \allowBreak cis4
    cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*9/16 s16 cis2. b4 gis2
}
tenorNotesAnt = \relative g {
    
    
    e\breve*9/16 s16 fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
    
    
    cis\breve*9/16 s16 a2. b4 cis2
}
