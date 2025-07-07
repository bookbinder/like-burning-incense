\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_51"
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
  Have cou -- rage, my son;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  your sins are for -- gi -- ven, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 gis8 gis4 gis8 fis fis4( e)
    \noBreak \noBreak \hideNotes e16 \unHideNotes
    gis8 fis[ gis] fis e gis[ fis] fis4 \bar "'"
    fis8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2. s\breve*5/16 s16 cis2~ cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    
    
    b2.~ b\breve*5/16 s16 a2~ a\breve*7/16~ a4 gis
}
bassNotesAnt = \relative c {
    
    
    e2. gis\breve*5/16 s16 a2 a,\breve*7/16 e'2
}
