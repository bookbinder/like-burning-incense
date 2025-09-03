\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_139_13-18,_23-24"
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
  I shall not cease to plead with God for Zi -- on
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  un -- til he sends his Ho -- ly One in all his ra -- diant beau -- ty.
}
sopNotesAnt = \relative e' {
  cis8 b cis[ e] dis[ e] dis cis b e[ fis] e fis[ gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis([ b] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis4
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 s4. e'\breve*7/16 s16 dis\breve*5/16
  cis\breve*5/16 b4.~ b4. gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16 cis'4. b\breve*7/16 s16 gis\breve*5/16
  e\breve*5/16~ e4. fis4.~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*9/16~ cis4. e\breve*7/16 s16 b\breve*5/16
  a\breve*5/16 gis4. b4. cis2
}
