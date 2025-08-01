\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_148"
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
  The name of the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is praised in hea -- ven and on earth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 cis4 b8 cis e([ fis] gis4)
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis4
    \allowBreak e8
    \allowBreak e
    \allowBreak e[ gis]
    \allowBreak gis4( fis) \bar "'"
    \allowBreak fis8
    \allowBreak e[ fis]
    \allowBreak gis[ cis,]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*11/16 s16 cis\breve*7/16 b4~ b\breve*5/16
    gis4 a4 gis
}
tenorNotesAnt = \relative g {
    
    
    e\breve*11/16~ s16 e\breve*7/16~ e4 dis\breve*5/16
    e4 fis e
}
bassNotesAnt = \relative c {
    
    
    cis\breve*11/16 s16 a\breve*7/16 gis4 b\breve*5/16
    cis4~ cis2
}
