\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "3"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_65"
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
  The mer -- cy of the Lord __
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  fills the earth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 e8 fis[ gis] gis fis e fis([-- gis a gis] fis4)
    \noBreak \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8[ gis]
    \allowBreak fis8
    \allowBreak e[ gis]
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4 s\breve*5/16 cis2.~ s16 cis4.~ cis4. e4 b2
}
tenorNotesAnt = \relative g {
    
    
    gis4 b\breve*5/16 a2.~ s16 a4. gis4. a4~ a4 gis
}
bassNotesAnt = \relative c {
    
    
    e4~ e\breve*5/16 a2. s16 a,4. cis4.~ cis4 e2
}
