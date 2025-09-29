\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Sirach_36_1-5,_10-13"
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
  Now the time has come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for this world to re -- ceive its sen -- tence; now the
  prince of this world will be dri -- ven out.
}
sopNotesAnt = \relative e' {
  gis4 gis8 gis[ a] gis fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4
  \allowBreak r4 \bar "|"
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak fis[ a]
  \allowBreak a4
  \allowBreak gis8
  \allowBreak a
  \allowBreak b--
  \allowBreak b--
  \allowBreak e,4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2. cis\breve*5/16 s16 e2~ 4.~ 2.~
  4.~ 4.~ 2. cis4 b
}
tenorNotesAnt = \relative g {
  b2. a\breve*5/16 s16 gis2 cis4.
  << { \hideNotes \once \override NoteColumn.force-hshift = 0 e,2.~ \unHideNotes }
     \new Voice { \voiceOne b'2. } >>
  e,4. fis a2. gis2
}
bassNotesAnt = \relative c {
  e2.~ \breve*5/16~ s16 e2~ 4.~ 2.
  gis,4. a cis2. e2
}
