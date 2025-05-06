\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_97"
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
  A light has dawned for the just;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  joy has come to the up -- right of heart, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 b8 e[ dis] e e[ gis] fis e fis4
    \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak gis8[ b]
    \allowBreak gis
    \allowBreak fis4
    \allowBreak e8
    \allowBreak fis
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak fis4( e) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*9/16 s4 s16 s4. dis2 cis2~ cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*9/16 a4 s16 b4.~ b2 e,2 a\breve*7/16~ a4 gis4
}
bassNotesAnt = \relative c {
    
    
    e\breve*9/16~ e4~ s16 e4. b2 a2~ a\breve*7/16 e'2
}
