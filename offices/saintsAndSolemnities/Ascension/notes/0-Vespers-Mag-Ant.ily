\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "82"
antKeysig = \key cis \minor
psalmnum = "Magnificat"
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
  Fa -- ther, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have made known your name to the men you have gi -- ven me;
  now I am pray -- ing for them and not for the world,
  be -- cause I am co -- ming to you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8[ dis cis] cis4
  \noBreak \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis4
  \allowBreak b8
  \allowBreak e[ fis]
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak gis4( fis)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e([ gis] b4)
  \allowBreak a8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e4
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis[-- dis e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak b4 \bar ","
  \allowBreak b8
  \allowBreak e4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak e
  \allowBreak fis
  \allowBreak b4
  \allowBreak a8
  \allowBreak gis
  \allowBreak gis4( fis) \bar "'"
  \allowBreak fis8
  \allowBreak e[ cis]
  \allowBreak fis[ e cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 s16 s4. s\breve*5/16 cis2. e2.
  cis4. b2 cis4 s4 s\breve*5/16 s4. cis4 e4
  cis\breve*5/16 b4. e2 dis\breve*5/16 cis4 cis4. gis4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 s16 fis4. gis\breve*5/16 a2. gis2.
  a4. gis2~ gis4 fis gis\breve*5/16 fis4. gis2
  a\breve*5/16 gis4. a2 b\breve*5/16 gis4 fis4. e4
}
bassNotesAnt = \relative c {
  cis\breve*5/16 s16 dis4. e\breve*5/16~ e2.~ e2.~
  e4.~ e2 cis4 dis e\breve*5/16 dis4. cis2
  a\breve*5/16 e'4. cis2 b\breve*5/16 cis4 a4. cis4
}
