\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "39"
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
  Three mys -- ter -- ies mark this ho -- ly day:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to -- day the star leads the Ma -- gi to the in -- fant Christ;
  to -- day wa -- ter is changed in -- to wine for the wed -- ding feast;
  to -- day Christ wills to be bap -- tized
  by John in the riv -- er Jor -- dan to bring us sal -- va -- tion.
}
sopNotesAnt = \relative e' {
  \allowBreak cis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak fis[ e]
  \allowBreak dis
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis[ fis e]
  \allowBreak e4
  \allowBreak dis8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis4 \bar ","
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8[ gis fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e([ fis] e4)
  \allowBreak e8
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2. gis4. s16 cis4. b2
  gis\breve*7/16 cis4. b cis4 b2 cis
  b2~ \breve*5/16~ 4~ 4. cis2 e4.~
  2.~ 4. dis cis2. b2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2. e4.
  \shape #'((0 . -0.6) (0 . -0.6) (-2 . -0.6) (-2 . -0.6))~
  s16
  << {\hideNotes e4. \unHideNotes}
     \new Voice { \voiceOne gis4. } >>
  e2~
  \breve*7/16 fis2. gis4 e2~ 2~
  2 dis\breve*5/16 e4 fis4. gis2 a4.
  b2.~ 2. gis2.~ 2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2. cis4. s16 e4.~ e4 dis
  cis\breve*7/16 b2. e4~ e2 a,
  e2 b'\breve*5/16 e4 dis4. cis2~ 4.
  e2. b cis gis2
}
