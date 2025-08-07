\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
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
  Bles -- sed Law -- rence said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  The night is not dark for me; all things shine as in the noon -- day light.
}
sopNotesAnt = \relative e' {
  \allowBreak cis8
  \allowBreak dis
  \allowBreak e4
  \allowBreak cis8
  \allowBreak e4( dis)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis4 \bar ","
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*5/16~ s16 b\breve*8/16 b4 cis4.
  b\breve*5/16 cis4 b4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis s16 gis\breve*8/16 fis4 gis4.
  e\breve*5/16 gis4~ gis
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b~ s16 b\breve*8/16~ b4 e4.~ e\breve*5/16
  cis4 gis
}
