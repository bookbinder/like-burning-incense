\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_149"
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
  Bles -- sed Law -- rence prayed:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I thank you, Lord, for per -- mit -- ting me to en -- ter the gates
  of your king -- dom.
}
sopNotesAnt = \relative e' {
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
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
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b4. s16 cis4. e\breve*6/16 s4
  s4. cis\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4. s16 gis4. b\breve*6/16 gis4
  fis4.~ fis\breve*7/16~ fis4 e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b4. s16 e4.~ e\breve*6/16~ e4
  b4. a\breve*7/16 cis2
}
