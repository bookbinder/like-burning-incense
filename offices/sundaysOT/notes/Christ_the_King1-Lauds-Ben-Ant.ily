\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
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
  His king -- dom will en -- dure for -- e -- ver,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and all the kings of the earth will serve and o -- bey him.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis b cis[ e] e dis[ e dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*6/16 cis4.~ cis4. b4.~ s16
  b4. cis2 b2 cis2~ cis4 b4
}
tenorNotesAnt = \relative g {
  e\breve*6/16~ e4. gis2. s16 fis4. gis2
  b2 gis2~ gis2
}
bassNotesAnt = \relative c {
  cis\breve*6/16~ cis4. gis2. s16 b4. e2
  dis2 cis2 gis2
}
