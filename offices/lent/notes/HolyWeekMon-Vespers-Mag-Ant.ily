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
  As Mo -- ses
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  lift -- ed up the ser -- pent in the de -- sert, so must the
  Son of Man be raised up, so that all who be -- lieve
  in him may have e -- ter -- nal life.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis4
  \allowBreak b8
  \allowBreak cis[-- gis' fis]
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis8[ e]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b2 s16 cis\breve*5/16 b2 dis cis\breve*7/16
  b4. \parenthesize gis4. b4 cis4 e2 dis4. cis b\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  e4 fis2 s16 gis\breve*5/16 fis2~ 2 a\breve*7/16
  fis4. gis dis4 gis2.~ 4. a fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  cis4 b2 s16 e\breve*5/16 dis2 b a\breve*7/16
  b4. e dis4 cis2. b4. a b\breve*5/16 cis4
}
