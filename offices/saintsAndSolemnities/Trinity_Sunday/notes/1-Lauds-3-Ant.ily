\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_149"
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
  All things are from him,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  through him, and in him; to him be glo -- ry for e -- ver.
}
sopNotesAnt = \relative e' {
  e4 fis8[ gis] gis a[ gis] gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e[ gis]
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*5/16~ e2 s16 dis\breve*5/16 cis4~ cis4.~ cis4. b2 e2
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 b2~ s16 b\breve*5/16 gis4 e4. a4. gis2 b
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e2 s16 b\breve*5/16 cis4~ cis4. a4. e2~ e2
}
