\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_87"
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
  Ci -- ty of God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you are the source of our life; with mu -- sic and dance we
  shall re -- joice in you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 b8 cis e4( dis)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis) \bar ","
  \allowBreak cis8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ fis gis fis]
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*8/16~ s16 b2  s\breve*9/16 s\breve*5/16
  e\breve*5/16 b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
  e2 fis\breve*8/16 s16 dis2 gis\breve*9/16 b\breve*5/16
  gis\breve*5/16~ gis4. e4 gis2
}
bassNotesAnt = \relative c {
  cis2 b\breve*8/16~ s16 b2 e\breve*9/16 dis\breve*5/16
  cis\breve*5/16 gis4.~ gis4~ gis2
}
