\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "42"
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
  With ten -- der com -- pas -- sion,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  our God has come to his peo -- ple and set them free.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis dis[ e dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak e([ fis] e4)
  \allowBreak dis8
  \allowBreak dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 cis4. b4.~ s16 b4. cis2 b2 cis4 a4. gis2  
}
tenorNotesAnt = \relative g {
  e\breve*5/16 gis2. s16 fis4. gis2 s2 gis4 fis4. e2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 gis2. s16 b4. e2 dis2 cis4~ cis4.~ cis2
}
