\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_98"
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
  All peo -- ple will see
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the sa -- ving power of our God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 e8 dis cis dis([ e] dis4)
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis[-- fis]
  \allowBreak \breathe
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*5/16 s16 cis\breve*7/16~ cis4 b gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis\breve*5/16 s16 gis\breve*7/16 fis4~ fis~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b\breve*5/16 s16 e\breve*7/16 a,4 b4 cis2
}
