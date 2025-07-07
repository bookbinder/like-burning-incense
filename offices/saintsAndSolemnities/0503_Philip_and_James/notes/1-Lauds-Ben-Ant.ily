\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
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
  Phi -- lip found Na -- tha -- nael and said to him:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  We have found the man Mo -- ses wrote of in the law,
  the one of whom the pro -- phets spoke. He is
  Je -- sus, song of Jo -- seph, from Na -- za -- reth,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ dis] cis b cis dis[ e] dis dis dis e cis4
  \noBreak \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak b8
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak a
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak cis[ dis e dis]
  \allowBreak cis4
  \allowBreak b8[ cis]
  \allowBreak b
  \allowBreak e[ fis gis fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e[ cis]
  \allowBreak e(~[ e] e[ cis])
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s\breve*6/16 s4 s16 s4 s4. s4 dis4.
  e2. dis\breve*5/16 e cis4. b2 cis4.
  s2. s4. s2 s4. dis\breve*5/16 cis4 a2 gis4
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 fis\breve*6/16 e4 s16 fis4 gis4. b4~ b4.
  gis2. b\breve*5/16~ b a4. gis2~ gis4.~
  gis2. fis4. gis2 b4.~ b\breve*5/16 gis4 fis2 e4
}
bassNotesAnt = \relative c {
  e\breve*5/16 b\breve*6/16 cis4 s16 dis4 e4.~ e4 b4.~
  b2.~ b\breve*5/16 e~ e4.~ e2 cis4.
  e2. dis4. cis2 dis4. b\breve*5/16 cis4~ cis2~ cis4
}
