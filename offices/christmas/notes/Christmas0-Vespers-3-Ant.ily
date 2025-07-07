\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Phil_2_6-11"
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
  The e -- ter -- nal Word,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  born of the Fa -- ther be -- fore time be -- gan,
  to -- day emp -- tied him -- self for our sake
  and be -- came man.
}
sopNotesAnt = \relative e' {
  cis8 dis e[ dis] cis b([ cis] dis4)
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis[ e dis]
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak fis([ e] dis4) \bar "'"
  \allowBreak dis8
  \allowBreak cis4( gis')
  \allowBreak gis8
  \allowBreak a
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak cis,4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s2 s16 gis2 cis4. dis4. s\breve*5/16
  cis4 b4. cis2 e4. dis4. cis4. b2~ b4 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis2 s16 gis2 e4. fis4. gis\breve*5/16~
  gis4~ gis4.~ gis2 b4.~ b4. e,4. dis2~ dis4 e4
}
bassNotesAnt = \relative c {
  e\breve*5/16 dis4( b)~ s16 b2~ b4.~ b4. e\breve*5/16
  cis4( gis4.) e'2~ e4. b4.~ b4.~ b2 gis4 cis4
}
