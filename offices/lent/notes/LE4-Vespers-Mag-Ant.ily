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
  Why are you bent on kil -- ling me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  when I have told you the truth?
}
sopNotesAnt = \relative e' {
  e4 cis8 dis e[ dis] cis gis'[ fis] e dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*10/16 gis\breve*5/16 s16 cis2 b4
}
tenorNotesAnt = \relative g {
  e\breve*10/16 fis\breve*5/16 s16 gis2~ 4
}
bassNotesAnt = \relative c {
  cis\breve*10/16 b\breve*5/16 s16 e2 gis,4
}
