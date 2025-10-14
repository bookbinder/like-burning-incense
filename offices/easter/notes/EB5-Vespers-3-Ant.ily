\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Rev_11_17-18_and_12_10b-12a"
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
  Christ yes -- ter -- day and to -- day:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he is the same for e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 gis'8 fis e4 e8 fis e4( dis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*8/16 b\breve*10/16 s16 gis\breve*5/16 a4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*8/16 fis\breve*10/16 s16 e\breve*5/16 fis4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*8/16 b\breve*10/16 s16 cis\breve*5/16~ 4~ 2
}
