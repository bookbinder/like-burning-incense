\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_62"
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
  E -- vil men said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Let us make the just man suf -- fer; he sets him -- self
  a -- gainst our way of life.
}
sopNotesAnt = \relative e' {
  e4 cis8 e[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8[ gis]
  \allowBreak cis,4
  \allowBreak cis \bar ","
  \allowBreak gis'8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak b
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b\breve*8/16 s16 cis2 a4 gis4. b2.~
  4.~ 4 gis
}
tenorNotesAnt = \relative g {
  e4. fis\breve*8/16~ s16 fis2 e4~ 4.~ 2.~
  4. fis4 e
}
bassNotesAnt = \relative c {
  cis4. b\breve*8/16 s16 a2 cis4~ 4. e,2.
  gis4.~ 4 cis
}
