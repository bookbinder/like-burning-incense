\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_113"
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
  Je -- sus took his dis -- ci -- ples
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and went up the moun -- tain where he was trans -- fi -- gured
  be -- fore them.
}
sopNotesAnt = \relative e' {
  cis8[ e] e fis4 e8 e e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak gis'8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4
  \allowBreak gis8
  \allowBreak cis,4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 b\breve*9/16 s16 s2 s2
  b2. a4 gis4
}
tenorNotesAnt = \relative g {
  e\breve*7/16 fis\breve*9/16 s16 gis2 b2
  dis,2. e2
}
bassNotesAnt = \relative c {
  cis\breve*7/16 b\breve*9/16 s16 e2~ e2
  b2. cis2
}
