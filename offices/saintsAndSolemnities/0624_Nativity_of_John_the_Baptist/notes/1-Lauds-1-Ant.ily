\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "70"
antKeysig = \key e \major
psalmnum = "Ps_63_2-9"
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
  You shall name the child John,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and ma -- ny will re -- joice at his birth.
}
sopNotesAnt = \relative e' {
  cis8 cis cis[ b] e fis[ gis] gis4 
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 e\breve*7/16 s16 cis2 b4
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 b\breve*7/16 s16 a2 gis4
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e\breve*7/16~ s16 e2~ e4
}
