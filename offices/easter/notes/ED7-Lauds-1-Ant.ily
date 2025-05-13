\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_92
"
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
  How won -- der -- ful
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  are your works, O Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 gis gis fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis4( fis) \bar "'"
  \allowBreak gis8
  \allowBreak b[ gis]
  \allowBreak fis[ gis fis e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b4 cis2. s16 e4. dis\breve*5/16 e4 cis2 gis4
}
tenorNotesAnt = \relative g {
  gis4 a2. s16 b4.~ b\breve*5/16 e,4~ e2~ e4
}
bassNotesAnt = \relative c {
  e4~ e2.~ s16 e4. b\breve*5/16 gis4 a2 e4
}
