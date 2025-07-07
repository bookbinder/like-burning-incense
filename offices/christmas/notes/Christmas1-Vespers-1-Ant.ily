\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "15"
antKeysig = \key cis \minor
psalmnum = "Ps_110_1-5,_7"
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
  You have been en -- dowed from your birth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with prince -- ly gifts; in e -- ter -- nal splen -- dor, be -- fore
  the dawn of light on earth, I have be -- got -- ten you.
}
sopNotesAnt = \relative e' {
  e4 e8 b cis cis[ gis'] gis gis gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4 \bar ","
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis4 \bar "'"
  \allowBreak cis4
  \allowBreak b8
  \allowBreak cis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. s4 cis2 e4. s16 dis4. cis2
  b4. cis\breve*7/16~ cis2. b4 s2 b4 gis4
}
tenorNotesAnt = \relative g {
  e4. fis4 gis2 b4.~ s16 b4. gis2
  e4.~ e\breve*7/16 a2. fis4~ fis2~ fis4 e4
}
bassNotesAnt = \relative c {
  cis4. dis4 e2~ e4. s16 b4. cis2
  gis4. a\breve*7/16~ a2. b4 gis2~ gis4 cis
}
