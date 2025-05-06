\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "70"
antKeysig = \key e \major
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
  Si -- mon Pe -- ter said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Lord, to whom shall we go? You have the words of e -- ter -- nal life;
  and we be -- lieve and we are con -- vinced that you are the Christ,
  the Son of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8 dis[ e] cis b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis[-- gis a gis]
  \allowBreak fis8
  \allowBreak e4 \bar "|"
  \allowBreak r8
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak cis
  \allowBreak cis[-- b]
  \allowBreak b
  \allowBreak cis4
  \allowBreak cis8
  \allowBreak e
  \allowBreak e4( fis) \bar ","
  \allowBreak b,8
  \allowBreak e4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak gis[ b gis]
  \allowBreak gis
  \allowBreak fis[-- gis]
  \allowBreak a
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak gis[ fis]
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*15/16~ s16 b4 gis2 cis2 e\breve*5/16 b4 a\breve*5/16 s4.
  cis2 gis4~ gis4.~
  gis\breve*8/16 cis2.~ cis4 b2
}
tenorNotesAnt = \relative g {
  e\breve*15/16 s16 dis4 e2~ e2
  a\breve*5/16 <e~ gis>4 e\breve*5/16 fis4. e2~ e4( dis4.)
  e\breve*8/16~ e2. a4~ a gis
}
bassNotesAnt = \relative c {
  gis\breve*15/16 s16 b4 cis2 a2
  cis\breve*5/16 s4 cis\breve*5/16 dis4. a2 b4~ b4.
  gis\breve*8/16 a2.~ a4 e'2
}
