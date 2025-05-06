\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Deut_32_1-12"
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
  It is I who bring death
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and I who give life; I in -- flict in -- ju -- ry and I bring
  hea -- ling, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis8 b e4 e8 fis[ gis] gis4
    \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak fis8
    \allowBreak gis[ b]
    \allowBreak gis
    \allowBreak gis[ a]
    \allowBreak gis4( fis) \bar ","
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak dis[ e]
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis4 \bar "'"
    \allowBreak fis8
    \allowBreak e4
    \allowBreak e8[ fis]
    \allowBreak e[-- dis]
    \allowBreak cis[ b]
    \allowBreak \breathe
    \allowBreak cis8
    \allowBreak e[ dis]
    \allowBreak cis4
    cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*10/16 s16 b\breve*5/16~ b\breve*9/16 cis2.
    b\breve*9/16~ b4 gis2
}
tenorNotesAnt = \relative g {
    
    
    e\breve*10/16~ s16 e\breve*5/16 dis\breve*9/16 e2.~
    e\breve*9/16 fis4~ fis e
}
bassNotesAnt = \relative c {
    
    
    cis\breve*10/16 s16 e,\breve*5/16 b'\breve*9/16 a2.
    gis\breve*9/16 b4 cis2
}
