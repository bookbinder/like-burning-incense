\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
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
  The world will per -- se -- cute you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  but have cou -- rage, I have o -- ver -- come the world,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e fis4 e8 dis[ e] cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ gis']
  \allowBreak gis4 \bar ","
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ e]
  \allowBreak fis
  \allowBreak e4( dis) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*13/16 s16 b4 cis2~ cis\breve*8/16 b\breve*5/16
  cis4~ cis4 b
}
tenorNotesAnt = \relative g {
  e\breve*13/16 s16 fis4 gis2~ gis\breve*8/16~
  gis\breve*5/16 e4 gis2
}
bassNotesAnt = \relative c {
  cis\breve*13/16 s16 b4 e2 cis\breve*8/16
  gis\breve*5/16~ gis4~ gis2
}
