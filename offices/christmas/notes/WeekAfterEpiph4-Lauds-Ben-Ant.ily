\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  We have seen his star in the East,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and have come with gifts to wor -- ship the Lord.
}
sopNotesAnt = \relative e' {
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak dis4
  \allowBreak fis8
  \allowBreak dis
  \allowBreak dis4( cis)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis4
  \allowBreak dis8
  \allowBreak e[ fis]
  \allowBreak gis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*9/16 s\breve*7/16 s16 e4. b
  cis2 b4
}
tenorNotesAnt = \relative g {
  fis\breve*9/16 gis\breve*7/16~ s16 gis4. fis
  gis2~ 4
}
bassNotesAnt = \relative c {
  b\breve*9/16 e\breve*7/16~ s16 e4. dis
  cis2 gis4
}
