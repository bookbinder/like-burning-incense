\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "B"
psalmtone = "14"
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
  Peace be with you; it is I,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  al -- le -- lu -- ia; do not be a -- fraid, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    e8 e e dis fis fis gis4
    \noBreak \hideNotes gis16 \unHideNotes
    e8 e cis b4 \bar "," e8 dis fis fis gis4 \bar "'"
    gis8 gis[ fis] fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2 s2 s16 s4 s4. s2 e4. cis4 b4.
}
tenorNotesAnt = \relative g {
    
    
    gis2 a4 b s16 gis4 fis4. gis4 a b4. a4 gis4.
}
bassNotesAnt = \relative c {
    
    
    e2~ e2~ s16 e4 dis4. cis2 e4.~ e4~ e4.
}
