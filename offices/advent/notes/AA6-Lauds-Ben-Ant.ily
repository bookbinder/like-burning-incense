\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "42"
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
  Our God comes,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  born as man of Da -- vid's line, en -- throned as king
  for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 fis[ gis] cis,4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak gis'8[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis2. s16 s2. e4. dis4. cis4. a4.~
  a\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
  gis2. s16 b2.~ b2. gis4. fis4.~
  fis\breve*7/16~ fis4 e
}
bassNotesAnt = \relative c {
  e2.~ s16 e2. b2. cis4.~ cis4.~
  cis\breve*7/16~ cis2
}
