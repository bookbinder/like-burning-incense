\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_135_1-12"
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
  John was in the wil -- der -- ness
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  bap -- tiz -- ing and pro -- claim -- ing a bap -- tism of pe -- nance
  for the for -- give -- ness of sins.
}
sopNotesAnt = \relative e' {
  \allowBreak cis8[ e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak a4
  \allowBreak gis
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak cis,([ dis] fis4)
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2. s16 cis\breve*5/16 e2~
  4~ 4. cis\breve*7/16~ 2. gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2. s16 gis\breve*5/16~ 2
  cis4 b4. a\breve*7/16 fis2. e2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2. s16 e\breve*5/16~ 2~
  4~ 4. a\breve*7/16 a,2. cis2
}
