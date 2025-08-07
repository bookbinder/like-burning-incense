\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Rev_4_11_and_5_9,_10,_12"
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
  I thank you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Lord Je -- sus Christ, for per -- mit -- ting me to en -- ter the gates
  of your king -- dom.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak cis[ gis']
  \allowBreak gis4
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8[ fis]
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis([ e] fis4)
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis4
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 e\breve*7/16 s16 s2 e2 r4.
  dis\breve*5/16 cis4 gis2
}
tenorNotesAnt = \relative g {
  gis2 b\breve*7/16~ s16 b2 gis fis4.~
  fis\breve*5/16~ fis4~ fis e
}
bassNotesAnt = \relative c {
  e2~ e\breve*7/16 s16 dis2 cis~ cis4.
  b\breve*5/16 a4 cis2
}
