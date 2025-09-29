\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "79"
antKeysig = \key e \major
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
  Nev -- er be -- fore
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has a -- ny -- one spo -- ken like this man.
}
sopNotesAnt = \relative e' {
  gis8 gis gis gis4( fis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak a
  \allowBreak fis
  \allowBreak fis[ a gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. s\breve*5/16 s16 s4 s\breve*5/16 e4.~ 4
}
tenorNotesAnt = \relative g {
  b4. a\breve*5/16 s16 gis4 cis\breve*5/16 a4. b4
}
bassNotesAnt = \relative c {
  e4.~ \breve*5/16~ s16 e4~ \breve*5/16~ 4.~ 4
}
