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
  Je -- sus said
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to the chief priests and the crowds of the Jews:
  Who -- ev -- er comes from God hears the word of God. You will
  not lis -- ten be -- cause you do not come from God.
}
sopNotesAnt = \relative e' {
  cis8[ e] e dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar ","
  \allowBreak dis8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak gis([-- ais b ais] gis4)
  \allowBreak fis8[ gis]
  \allowBreak ais
  \allowBreak ais[ b]
  \allowBreak ais
  \allowBreak gis4
  \allowBreak r4 \bar "|"
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak fis[ e dis]
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak cis[ e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e[ gis]
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b2 s16 dis2. cis2 b4.
  cis\breve*5/16 fis2.~ 2. dis2 cis\breve*5/16
  dis4. b~ 4~ 4. gis4 cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  e4. fis2 s16 b2. e,2 fis4.
  gis\breve*5/16 b2. a
  << {\hideNotes \once \override NoteColumn.force-hshift = 0 gis2~ \unHideNotes}
     \new Voice {\voiceOne b2}>>
  gis\breve*5/16
  b4. fis e4 dis4. e4 gis\breve*5/16~ 2
}
bassNotesAnt = \relative c {
  cis4. b2~ s16 b2.~ 2~ 4.
  e\breve*5/16 dis2.~ 2. gis2 e\breve*5/16
  b2.~ 4~ 4. cis4~ \breve*5/16 gis2
}
