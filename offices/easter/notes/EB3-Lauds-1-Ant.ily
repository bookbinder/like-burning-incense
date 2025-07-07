\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_43"
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
  You have come to Mount Zi -- on
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and to the ci -- ty of the li -- ving God, __ al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis8 dis e[ dis] cis cis[ gis'] gis[ fis] fis4
    \noBreak \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8
    \allowBreak e
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis([ e] dis4) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*7/16 dis'\breve*7/16 s16 cis\breve*7/16 dis\breve*5/16
    cis4~ cis b
}
tenorNotesAnt = \relative g {
    
    
    e\breve*7/16 fis\breve*7/16 s16 e\breve*7/16 b'\breve*5/16
    gis4~ gis2
}
bassNotesAnt = \relative c {
    
    
    cis\breve*7/16 b\breve*7/16~ s16 b\breve*7/16~ b\breve*5/16
    cis4 gis2
}
