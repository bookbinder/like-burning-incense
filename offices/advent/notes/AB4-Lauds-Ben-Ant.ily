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
  He will be en -- throned in Da -- vid's place
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to be king for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis[ gis'] gis gis([ a] gis4) gis8 fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis([ fis] gis4)
  \allowBreak fis8
  \allowBreak gis[ cis,]
  \allowBreak cis4 \bar "'"
  \allowBreak b8[ dis]
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis4. e\breve*5/16 dis2 s16
  cis\breve*5/16 gis2 b4. gis2
}
tenorNotesAnt = \relative g {
  gis2~ gis4. b\breve*5/16~ b2 s16
  e,\breve*5/16~ e2 dis4. fis4 e
}
bassNotesAnt = \relative c {
  e2~ e4.~ e\breve*5/16 b2 s16
  a\breve*5/16 cis2~ cis4.~ cis2
}
