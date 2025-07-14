\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Dan_3_57-88,_56"
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
  To -- day the Lord was trans -- fi -- gured
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and the voice of the Fa -- ther bore wit -- ness to him;
  Mo -- ses and E -- li -- jah ap -- peared with him in glo -- ry
  and spoke with him a -- bout the death he was to un -- der -- go.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ e] e e[ dis] cis b b[ cis dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis([ e] dis4)
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 b4.~ b2 s16 cis2 b
  e dis4 e2~ e~ e\breve*5/16 s2.
  e4. s4 s4 b2 cis2. b4
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis4.~ fis2 s16 e2 dis
  gis b4~ b2 cis b\breve*5/16~ b2.
  gis4.~ gis4~ gis4 fis2 gis2.~ gis4
}
bassNotesAnt = \relative c {
  cis\breve*9/16 dis4. b2~ s16 b2~ b2~
  b2~ b4 e2~ e~ e\breve*5/16 dis2.
  cis4.~ cis4 e b2 e2. gis,4
}
