\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "79"
antKeysig = \key e \major
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
  Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  walked through the crowd and went a -- way.
}
sopNotesAnt = \relative e' {
  gis8[ fis] fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e4
  \allowBreak fis8
  \allowBreak a
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  cis2 s16 e2~ 2.~ 4
}
tenorNotesAnt = \relative g {
  a2 s16 gis4 a b4. cis b4
}
bassNotesAnt = \relative c {
  a'2 s16 e2~ 2.~ 4
}
