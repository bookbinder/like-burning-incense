\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "17"
psalmtonestruct = "44"
psalmnum = "Ps_119_145-152"
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
  Lord, in your love
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  give me life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis8[ e] dis e fis4
    \noBreak \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak e[-- gis]
    \allowBreak \breathe
    \allowBreak e8
    \allowBreak e[ fis]
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis2 b\breve*5/16~ s16 b4. cis4 a4 gis
}
tenorNotesAnt = \relative g {
    
    
    e2 dis\breve*5/16 s16 e4.~ e4~ e2
}
bassNotesAnt = \relative c {
    
    
    cis2 b\breve*5/16 s16 gis4. a4 e2
}
