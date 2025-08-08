\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_147_12-20"
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
  By your mi -- rac -- u -- lous birth of the Vir -- gin
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have ful -- filled the Scrip -- tures: like a gen -- tle rain
  fal -- ling u -- pon the earth you have come down to save your peo -- ple.
  O God, we praise you.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak cis,4
  \allowBreak b8
  \allowBreak cis
  \allowBreak dis4
  \allowBreak dis
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak cis([ gis' fis] gis4)
  \allowBreak e8
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak b
  \allowBreak gis
  \allowBreak gis
  \allowBreak b
  \allowBreak gis4( fis) \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak gis4( cis,8)
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak dis4
  \allowBreak dis \bar ","
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16 b\breve*7/16 s16 cis2.
  s\breve*7/16 e4.~ e\breve*7/16 dis2~
  dis2 cis s4 b\breve*5/16~ b4. gis2
}
tenorNotesAnt = \relative g {
  e\breve*11/16 fis\breve*7/16 s16 gis2.
  b\breve*7/16~ b4. gis\breve*7/16 b2~
  b2 gis2.~ gis\breve*5/16 fis4.~ fis4 e4
}
bassNotesAnt = \relative c {
  cis\breve*11/16 b\breve*7/16 s16 e2.
  dis\breve*7/16 e4.~ e\breve*7/16 b2~
  b e2. gis,\breve*5/16 b4. cis2
}
