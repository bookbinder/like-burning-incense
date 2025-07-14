\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_116_10-19"
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
  Je -- sus took Pe -- ter, James and John with him,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and he be -- came fear -- ful and be -- gan to trem -- ble.
}
sopNotesAnt = \relative e' {
  cis8[ e] e e fis e cis[ e] e fis e dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak gis8[ cis,]
  \allowBreak cis4
  \allowBreak cis8
  \allowBreak cis
  \allowBreak b[ cis]
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16 b\breve*5/16 s16 cis4 a2. b4. gis2
}
tenorNotesAnt = \relative g {
  e\breve*11/16 fis\breve*5/16~ s16 fis4~ fis2.~ fis4.~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*11/16 b\breve*5/16 s16 a4 fis2. gis4. cis2
}
