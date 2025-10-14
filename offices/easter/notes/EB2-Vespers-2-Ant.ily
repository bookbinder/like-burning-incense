\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_45_11-18"
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
  Bles -- sed are those
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who are called to the wed -- ding feast of the Lamb,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis fis gis4( cis,)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis4( cis) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis\breve*10/16 s16 b2 cis4 b2
  a\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 s16 fis2 e4 fis2~
  \breve*5/16~ 4~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*10/16 s16 b2.~ 2
  fis\breve*5/16 gis4 cis2
}
