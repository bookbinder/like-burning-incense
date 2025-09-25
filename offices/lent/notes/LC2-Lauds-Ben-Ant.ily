\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  I tell you as -- sur -- ed -- ly,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  no pro -- phet is ac -- cept -- ed in his own coun -- try.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis4 fis8 gis cis, cis cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8[ e]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*12/16 s16 cis\breve*5/16~ 2 b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*12/16~ s16 e\breve*5/16 a2 fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*12/16 s16 a\breve*5/16~ 2 b4 cis2
}
