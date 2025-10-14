\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
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
  The bread of God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that comes down from heav -- en gives
  life to the world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ b] e fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak dis[-- e] \bar "'"
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s\breve*9/16 s16 cis2.~ 2
  b\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 b\breve*9/16 s16 a2.~ 2
  fis\breve*5/16~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*5/16~ \breve*9/16 s16 a2. a,2
  b\breve*5/16 cis2
}
