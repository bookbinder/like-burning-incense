\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key gis \minor
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
  The moun -- tains and hills
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will sing praise to God; all the trees of the fo -- rest will clap
  their hands, for he is co -- ming, the Lord of a king -- dom that lasts
  for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e cis dis e4
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak e4( dis) \bar ","
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis4( fis) \bar ","
  \allowBreak fis8
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak cis[ b]
  \allowBreak b4 \bar "'"
  \allowBreak b8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*8/16 s16 dis'4 cis\breve*5/16 b2.~ b2~
  b2 e4. dis\breve*5/16 fis\breve*8/16 e2
  dis4. cis\breve*5/16 cis4. b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
  e\breve*8/16 s16 b4 e\breve*5/16 fis2.~ fis2
  e2 gis4. b\breve*5/16~ b\breve*8/16~ b2~
  b4. gis\breve*5/16 e4. gis4. e4 gis2
}
bassNotesAnt = \relative c {
  cis\breve*8/16 s16 b4~ b\breve*5/16~ b2. dis2
  e2~ e4. b\breve*5/16 dis\breve*8/16 e2
  b4. e\breve*5/16 gis,4.~ gis4.~ gis4~ gis2
}
