\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "70"
antKeysig = \key e \major
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
  I am the true vine,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  al -- le -- lu -- ia; you are the bran -- ches, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 fis8 gis fis[ gis fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis[-- fis e]
  \allowBreak e4 \bar ","
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak b[ cis b]
  \allowBreak gis[-- fis e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*8/16 s16 s4. s4 cis\breve*10/16 e4. cis4. b4
}
tenorNotesAnt = \relative g {
  gis2 a\breve*8/16 s16 b4. gis4 a\breve*10/16 gis4. a4. gis4
}
bassNotesAnt = \relative c {
  e2~ e\breve*8/16~ s16 e4.~ e4 a\breve*10/16 e4.~ e4.~ e4
}
