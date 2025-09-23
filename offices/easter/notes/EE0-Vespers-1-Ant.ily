\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_141_1-9"
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
  Like the eve -- ning of -- fer -- ing
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  my hands rise up in prayer to you, O Lord,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis dis[ e] dis dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8[ fis]
  \allowBreak e4( cis) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s\breve*8/16 s16 cis2 e4. cis2~
  \breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis\breve*8/16 s16 gis2 b4. a2~
  \breve*5/16 fis4~ 4 e
}
bassNotesAnt = \relative c {
  e\breve*5/16 b\breve*8/16 s16 e2~ 4. a2
  a,\breve*5/16 b4 cis2
}
