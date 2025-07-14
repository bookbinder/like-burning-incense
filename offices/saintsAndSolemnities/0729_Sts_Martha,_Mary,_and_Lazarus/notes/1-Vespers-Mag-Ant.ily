\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Magnificat"
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
  Je -- sus loved Mar -- tha and Ma -- ry
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and their bro -- ther La -- za -- rus.
}
sopNotesAnt = \relative e' {
  cis8 e gis4 gis8[ a] gis gis gis[ fis] fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  fis8 e dis([ e] fis4) e8 dis cis8 cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  cis2 e dis2 s16 r4_"?" dis4( b4.) gis2 
}
tenorNotesAnt = \relative g {
  gis2 b~ b2. s16 fis4( dis4.) e2
}
bassNotesAnt = \relative c {
  e2~ e2 b2.~ s16 b4~ b4. cis2
}
