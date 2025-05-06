\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  I am the Good Shep -- herd;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I pas -- ture my sheep and I lay down my life for them, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis[ gis] cis,4 cis
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak e4
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak cis,4
  \allowBreak b8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak cis,4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*11/16 s16 cis\breve*5/16~ cis2 s2 dis2. b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*11/16~ s16 e\breve*5/16 a2 gis2 fis2.~ fis4~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*11/16 s16 a\breve*5/16~ a2 e'2 b2. gis4 cis2
}
