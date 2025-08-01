\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "42"
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
  I am the Al -- pha and the O -- me -- ga,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the first and the last, the be -- gin -- ning and the end;
  I am the root and the off -- spring of Da -- vid's race;
  I am the splen -- dor of the mor -- ning star, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    e4 b8 cis cis[ gis'] gis fis e fis[ gis] fis fis4
    \noBreak \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak fis
    \allowBreak fis4 \bar "'"
    \allowBreak fis8
    \allowBreak gis
    \allowBreak cis,[ dis]
    \allowBreak cis
    \allowBreak b
    \allowBreak cis
    \allowBreak dis4
    \allowBreak r4 \bar "|"
    \allowBreak dis4
    \allowBreak dis8
    \allowBreak e
    \allowBreak cis[ gis']
    \allowBreak gis
    \allowBreak gis
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis4 \bar "'"
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak fis
    \allowBreak gis[ cis,]
    \allowBreak cis4
    \allowBreak cis8
    \allowBreak cis
    \allowBreak b
    \allowBreak cis
    \allowBreak dis4 \bar "'"
    \allowBreak dis8
    \allowBreak e[ dis]
    \allowBreak cis4
    cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2 cis\breve*11/16 s16 e2 dis2 s\breve*5/16 b2~ b2 cis2 e2 s4.
    dis\breve*6/16 cis\breve*8/16 b4.~ b4 gis2
}
tenorNotesAnt = \relative g {
    
    
    gis4 fis gis\breve*5/16 b2.~ s16 b2~ b2
    gis\breve*5/16~ gis2 fis2 gis2 b2~ b4.~
    b\breve*6/16 gis\breve*8/16~ gis4. fis4~ fis e
}
bassNotesAnt = \relative c {
    
    
    cis4 dis4 e\breve*5/16 dis2. s16 e2 b2
    e\breve*5/16 gis,2 b e2~ e dis4.
    b\breve*6/16 e\breve*8/16 gis,4. b4 cis2 
}
