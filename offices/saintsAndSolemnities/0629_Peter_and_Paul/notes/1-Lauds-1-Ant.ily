\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_63_2-9"
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
  I know the one whom I have trus -- ted
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and I am cer -- tain that he, the just judge, has pow -- er
  to keep safe what he has en -- trus -- ted to me un -- til that day.
}
sopNotesAnt = \relative e' {
  r8 cis8 b cis cis[ gis'] gis fis e gis4 fis
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak e[ cis]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak dis[ e dis]
  \allowBreak dis4
  \allowBreak dis8[ e]
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis([ gis] fis4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e4
  \allowBreak cis8
  \allowBreak b[ dis]
  \allowBreak dis4
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 dis\breve*7/16 s16 cis2
  s4 b\breve*7/16 dis4. e4~ e4 dis e2 b2
  cis4. s4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*9/16 b\breve*7/16 s16 gis2
  fis4~ fis\breve*7/16 b4. gis4 b2~ b2 fis2
  gis4. dis4 e2
}
bassNotesAnt = \relative c {
  e\breve*9/16 b\breve*7/16 s16 cis2
  dis4 b\breve*7/16~ b4.~ b4~ b2 e2 dis2
  cis4.~ cis4~ cis2
}
