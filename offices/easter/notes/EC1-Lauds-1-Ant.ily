\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "1"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Ps_93"
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
  The Lord is king,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  robed in splen -- dor, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 e8 e[ fis] fis fis4( gis4)
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8[ a]
    \allowBreak gis
    \allowBreak b[ gis]
    \allowBreak gis4 \bar "'"
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4 s4. s2 s16 e4.~ e4~ e4. cis4 b2
}
tenorNotesAnt = \relative g {
    
    
    gis4 a4. b2~ s16 b4. cis4 b4. a4~ a gis
}
bassNotesAnt = \relative c {
    
    
    e4~ e4.~ e2~ s16 e4.~ e4~ e4.~ e4~ e2
}
