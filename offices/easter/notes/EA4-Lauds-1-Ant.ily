\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_77"
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
  You, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  are the source of life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis8[ e] cis cis4( b)
    \noBreak \hideNotes b16 \unHideNotes
    \allowBreak e8
    \allowBreak fis
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak gis[-- b]
    \allowBreak \breathe
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*9/16 s16 e2. cis4 b2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*9/16 s16 b2. a4~ a gis
}
bassNotesAnt = \relative c {
    
    
    e\breve*9/16~ s16 e2.~ e4~ e2
}
