\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_113"
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
  I will make you e -- ne -- mies,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you and the wo -- man, your off -- spring and hers.
}
sopNotesAnt = \relative e' {
  cis4 dis8 e[ dis] cis gis' fis fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  fis4 fis8 e e[ dis] dis4 \bar "'" e4 dis8[ fis] e
  dis dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*6/16 dis'2 s16 cis2 b2 a4 b2 gis2
}
tenorNotesAnt = \relative g {
  e\breve*6/16 fis2~ s16 fis2~ fis~ fis4~ fis2~ fis4( e)
}
bassNotesAnt = \relative c {
  cis\breve*6/16 b2 s16 a2 gis2 fis4 gis2 cis2
}
