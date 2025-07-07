\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Dan_3_57-88,_56"
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
  There is no grea -- ter love
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  than to lay down your life for your friends, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis fis4 e8 fis fis4( gis)
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis[ b gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis4~ cis2~ cis2. s16 b\breve*5/16~ b2. gis\breve*5/16 a4 gis2
}
tenorNotesAnt = \relative g {
  gis4 fis2 e2.~ s16 e\breve*5/16 dis2. e\breve*5/16 fis4~ fis e
}
bassNotesAnt = \relative c {
  e4 a,2 cis2. s16 e,\breve*5/16 b'2. cis\breve*5/16~ cis4~ cis2
}
