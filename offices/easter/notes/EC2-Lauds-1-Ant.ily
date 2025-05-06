\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "14"
psalmnum = "Ps_84"
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
  My heart and my flesh
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  re -- joice in the li -- ving God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 e8 gis4 fis8 fis[ gis] e([ gis] b4)
    \noBreak \hideNotes b16 \unHideNotes
    \allowBreak gis8
    \allowBreak fis([ gis] a4)
    \allowBreak fis8
    \allowBreak gis
    \allowBreak a[ gis]
    \allowBreak fis
    \allowBreak e4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4 s4. s4 s\breve*5/16 s16
    cis\breve*9/16~ cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
    
    
    b4~ b4. a4 gis\breve*5/16 s16
    a\breve*9/16~ a\breve*5/16~ a4 gis
}
bassNotesAnt = \relative c {
    
    
    gis'4 e4.~ e4~ e\breve*5/16 s16
    a\breve*9/16 a,\breve*5/16 e'2
}
