\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_119_105-112"
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
  Day af -- ter day
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I sat teach -- ing you in the tem -- ple and you
  did not lay hands on me. Now you come to scourge me
  and lead me to the cross.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis e([ dis] cis4)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak b[ cis]
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak cis,[ dis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4
  \allowBreak r4 \bar "|"
  \allowBreak gis'4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis
  \allowBreak \breathe
  \allowBreak cis8
  \allowBreak gis'
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s16 s4 cis\breve*7/16 dis
  r4. b4 gis2 b4.~ 4~ 2 gis b4
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 s16 fis4 e\breve*7/16 fis~
  4.~ 4 e2~ 4.~ 4 fis2 e
  gis4
}
bassNotesAnt = \relative c {
  e\breve*9/16 s16 dis4 cis\breve*7/16 b
  a4. b4 cis2 e,4. gis4 b2 cis
  gis4
}
