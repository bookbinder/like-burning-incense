\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_148"
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
  I shall en -- fold Zi -- on 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with my sal -- va -- tion and shed my glo -- ry
  a -- round Je -- ru -- sa -- lem, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 dis8 e cis[ b] e[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "'"
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak b
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  b2. cis\breve*5/16~ cis4.~ cis\breve*5/16 s16 \parenthesize b4.
  e\breve*6/16 cis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
  e2.~ e\breve*5/16 a4. gis\breve*5/16 s16 b4. gis\breve*6/16
  a\breve*7/16~ a4 gis4
}
bassNotesAnt = \relative c {
  gis2. a\breve*5/16~ a4. cis\breve*5/16 s16 dis4. e\breve*6/16~
  e\breve*7/16~ e2
}
