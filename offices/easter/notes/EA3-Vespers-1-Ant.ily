\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_20"
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
  Now the reign of our God has be -- gun
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and pow -- er is giv -- en to Christ, his a -- noint -- ed,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ e] e fis4 e8 dis cis[ e] dis b cis4( gis')
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve s16 b2.~ 2 cis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve~ s16 e2. fis2~ \breve*5/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  cis\breve s16 e,2. b'2 a\breve*5/16 gis4 cis2
}
