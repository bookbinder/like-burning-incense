\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_132_1-10"
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
  The Lord God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has giv -- en him the throne of Da -- vid his fa -- ther,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e4( dis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak gis'4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2 b\breve*9/16 s16 cis\breve*6/16 b\breve*5/16
  cis4~ 4 b
}
tenorNotesAnt = \relative g {
  e2 fis\breve*9/16 s16 gis\breve*6/16~ \breve*5/16
  e4 gis2
}
bassNotesAnt = \relative c {
  cis2 b\breve*9/16 s16 e\breve*6/16 gis,\breve*5/16~
  4~ 2
}
