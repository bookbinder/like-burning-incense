\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_130"
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
  Come, Lord, do not de -- lay;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  free your peo -- ple from their sin -- ful -- ness.  
}
sopNotesAnt = \relative e' {
  e4 cis8[ e] e fis e e4( dis4)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  cis4 s1 s8 s16 gis\breve*8/16 cis4 b4
}
tenorNotesAnt = \relative g {
  gis4~ gis4.~ gis4 fis2 s16 e\breve*8/16 gis2
}
bassNotesAnt = \relative c {
  cis4 e4.~ e4 b2 s16 cis\breve*8/16 gis2
}
