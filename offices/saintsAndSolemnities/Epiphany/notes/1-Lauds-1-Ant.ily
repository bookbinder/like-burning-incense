\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
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
  The wise men o -- pened their trea -- sures
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and of -- fered to the Lord gifts of gold, frank -- in -- cense and myrrh,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[ e cis]
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak gis'8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak gis4
  \allowBreak cis,8[ e]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak e4( dis) \bar "'"
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 cis2. s16 b\breve*5/16~ 2
  cis4. gis\breve*7/16 b\breve*5/16~ 4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16~ e2.~ s16 e\breve*5/16 dis2
  fis4. e\breve*7/16 fis\breve*5/16~ fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*9/16 a2. s16 e\breve*5/16 b'2
  a4. cis\breve*7/16 b\breve*5/16 gis4 cis2
}
