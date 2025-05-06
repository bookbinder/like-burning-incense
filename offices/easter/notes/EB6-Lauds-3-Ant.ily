\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "3"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_147_12-20"
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
  Zi -- on, give praise to your God;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he has brought peace to your bor -- ders, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    fis4 fis8 dis e[ dis] cis cis[ e] dis4
    \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak dis8
    \allowBreak dis
    \allowBreak dis[ e]
    \allowBreak cis[ b]
    \allowBreak cis
    \allowBreak e
    \allowBreak e[ dis]
    \allowBreak dis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    dis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    dis2 s4. s4 s2. s16 s2 b\breve*5/16 cis4~ cis b
}
tenorNotesAnt = \relative g {
    
    
    fis2 gis4. e4 fis2. s16 gis2~ gis\breve*5/16 e4 gis2
}
bassNotesAnt = \relative c {
    
    
    b2~ b4.~ b4~ b2. s16 e2 gis,\breve*5/16~ gis4~ gis2
}
