\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "42"
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
  Who -- e -- ver wish -- es to be great a -- mong you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  must be your ser -- vant; who -- e -- ver wish -- es to be first
  a -- mong you must be the slave of all.
}
sopNotesAnt = \relative e' {
  r8 gis8 fis gis fis e cis dis e4 fis8 e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "|"
  \allowBreak r8
  \allowBreak gis'8
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak cis
  \allowBreak dis
  \allowBreak e4
  \allowBreak fis8
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis4
  \allowBreak cis,8
  \allowBreak dis
  \allowBreak fis[ e]
  \allowBreak dis
  \allowBreak dis4( cis) \bar "||"

}
altoNotesAnt = \relative c' {
  gis\breve*11/16 b\breve*8/16 s16 gis2~ gis4~
  gis\breve*6/16 cis\breve*8/16 a\breve*7/16 gis2

}
tenorNotesAnt = \relative g {
  e\breve*11/16 fis\breve*8/16 s16 e2~ e4~
  e\breve*6/16~ e\breve*8/16 fis\breve*7/16~ fis4( e)
}
bassNotesAnt = \relative c {
  cis\breve*11/16 b\breve*8/16 s16 cis2~ cis4~
  cis\breve*6/16 a\breve*8/16 fis\breve*7/16 cis'2
}
