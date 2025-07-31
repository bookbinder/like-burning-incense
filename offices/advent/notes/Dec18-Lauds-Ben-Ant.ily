\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Let ev -- ery -- thing with -- in you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  watch and wait,
  for the Lord our God draws near.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis b cis[ e] e4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak fis8[ gis fis]
  \allowBreak e
  \allowBreak e4( fis) \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak cis,[ dis]
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8[ dis]
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*10/16 s16 b2 cis2 dis4 cis4. b4~ b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*10/16 s16 dis2 a'2 fis4 gis4. fis4~ fis4~ fis4( e)
}
bassNotesAnt = \relative c {
  cis\breve*10/16 s16 b2 a2 b4 e4. dis4 b cis2
}
