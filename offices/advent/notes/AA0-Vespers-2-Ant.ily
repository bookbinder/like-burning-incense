\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_142"
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
  Know that the Lord is co -- ming
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and with him all his saints; that day will dawn with a
  won -- der -- ful light, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 b8 cis cis[ gis'] a gis4 gis
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis4
  \allowBreak fis8[ gis]
  \allowBreak gis
  \allowBreak cis,4
  \allowBreak r4 \bar "|"
  \allowBreak e4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis4. e\breve*5/16 s16
  cis2 b4. cis2 b1 cis4.~ cis4. b4 gis2
}
tenorNotesAnt = \relative g {
  b2 a4. b\breve*5/16 s16
  a2 fis4. e2~ e1~
  e4. a4. fis4~ fis e
}
bassNotesAnt = \relative c {
  gis'2 fis4. e\breve*5/16~ s16
  e2 dis4. cis2 gis1
  a2. b4 cis2
}
