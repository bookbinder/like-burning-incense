\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "39"
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
  While Ma -- ry was wee -- ping
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  she bent down to look in -- to the tomb;
  she saw two an -- gels sea -- ted there, clothed in white,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e8 dis cis e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak b
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "|"
  \allowBreak r8
  \allowBreak dis8
  \allowBreak dis4
  \allowBreak dis8[ e]
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak e8[ cis e]
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*5/16 s16 s2 cis\breve*5/16 b4~
  b2. cis\breve*5/16 b4 gis2 b4. cis4~ cis b4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis\breve*5/16 s16 gis2 e\breve*5/16 fis4~
  fis2. e\breve*5/16 dis4 e2 gis4. e4 gis2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b\breve*5/16~ s16 b2~ b\breve*5/16~ b4~
  b2.~ b\breve*5/16~ b4 cis2 gis4.~ gis4~ gis2
}
