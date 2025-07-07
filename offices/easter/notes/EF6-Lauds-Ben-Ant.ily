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
  Be -- cause he suf -- fered death,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  we see Je -- sus crowned with glo -- ry and ho -- nor, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 b cis e[ fis] e dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak e([ fis] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b[ gis]
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s\breve*5/16 s16 s4. s4 s\breve*6/16
  dis\breve*5/16 cis4~ cis b
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 fis\breve*5/16 s16 gis4. cis4 b\breve*6/16~
  b\breve*5/16 gis4~ gis2
}
bassNotesAnt = \relative c {
  e\breve*7/16 b\breve*5/16 s16 e4.~ e4~ e\breve*6/16 gis\breve*5/16
  e4 gis,2
}
