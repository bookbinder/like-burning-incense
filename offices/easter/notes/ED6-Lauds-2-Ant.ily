\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Tobit_13_8-11,_13-15"
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
  Je -- ru -- sa -- lem, ci -- ty of God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will shine with a ra -- diant light, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e dis[ e] fis4 fis8 e e4( dis)
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16 b2. s16 cis2 s4. dis\breve*5/16 cis4~ cis b
}
tenorNotesAnt = \relative g {
  e\breve*11/16 fis2. s16 gis2 b4.~ b\breve*5/16 gis4~ gis2
}
bassNotesAnt = \relative c {
  cis\breve*11/16 b2. s16 e2 dis4. b\breve*5/16 cis4 gis2
}
