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
  I have o -- pen -- ly sought wis -- dom in my prayers,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and it has blos -- somed like ear -- ly grapes.
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis \allowBreak cis[ gis']
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b[ cis]
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*12/16 cis\breve*5/16 s16 gis2 b4. gis4
}
tenorNotesAnt = \relative g {
  e\breve*12/16~ e\breve*5/16 s16 cis2 dis4. e4
}
bassNotesAnt = \relative c {
  cis\breve*12/16 a\breve*5/16 s16 e2 gis4. cis4
}
