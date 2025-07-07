\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Dan_3_57-88,_56"
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
  Give glo -- ry to the King of kings,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  sing praise to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8[ fis] e e dis fis fis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  gis4 gis8[ a] gis fis4 \bar "'" fis8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16 cis4 e4 s16
  dis4 e4. cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 a4 b4 s16
  gis4~ gis4. a\breve*5/16~ a4 gis4
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e4~ e4 s16 b4 cis4. a\breve*5/16 e'2
}
