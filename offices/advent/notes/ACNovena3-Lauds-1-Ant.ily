\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_85"
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
  The Lord will come from his ho -- ly place
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to save his peo -- ple.
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] cis dis[ e] dis e fis[ gis] fis fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis([ fis] gis4)
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2~ b2. s16 gis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2~ fis2. s16 e\breve*5/16 gis2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2 dis2. s16 cis\breve*5/16 gis2
}
