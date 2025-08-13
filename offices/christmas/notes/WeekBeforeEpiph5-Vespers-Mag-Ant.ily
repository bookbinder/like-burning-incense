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
  We have found Je -- sus of Na -- za -- reth,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the son of Jo -- seph. He is the one of whom Mo -- ses and the
  pro -- phets wrote.
}
sopNotesAnt = \relative e' {
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis([-- dis] e4)
  \allowBreak fis
  \allowBreak e8
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak gis8[ b]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak dis8[ fis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 a4( gis) b2~ b\breve*5/16 s16 gis4. cis\breve*5/16
  b2 cis4.~ 4 dis4. s4 a4 gis
}
tenorNotesAnt = \relative g {
  e2. dis2 fis\breve*5/16 s16 e4.~ \breve*5/16~
  2~ 4. a4 fis4.~ 4~ 4 e
}
bassNotesAnt = \relative c {
  cis2. b2~ \breve*5/16 s16 cis4. a\breve*5/16
  e2 a4.~ 4 b4.~ 4 cis2
}
