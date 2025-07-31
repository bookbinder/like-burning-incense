\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "14"
antKeysig = \key e \major
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
  Vir -- gin Ma -- ry,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all that the pro -- phets fore -- told of Christ has been
  ful -- filled through you: as a vir -- gin, you con -- ceived,
  and af -- ter you gave birth, a vir -- gin you re -- mained.
}
sopNotesAnt = \relative e' {
  b8 cis e4 e
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( gis) \bar "'"
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak b([ cis] b4)
  \allowBreak b8
  \allowBreak e,4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak b
  \allowBreak cis4( b) \bar ","
  \allowBreak b8
  \allowBreak cis
  \allowBreak e
  \allowBreak cis
  \allowBreak cis[ e]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s8 cis8~ cis4 b4~ s16 b2 cis4.~ cis4 e\breve*7/16
  cis\breve*5/16 b2 cis4 b\breve*5/16 s\breve*5/16
  s\breve*5/16 b4.~ b4 a gis
}
tenorNotesAnt = \relative g {
  fis4 << { \hideNotes e2~ \unHideNotes } \new Voice { \voiceOne gis2 } >> s16 e2~ e4. a4 b\breve*7/16
  a\breve*5/16 gis2~ gis4~ gis\breve*5/16 fis
  gis b4.~ b4 a gis
}
bassNotesAnt = \relative c {
  dis4 e2 s16 gis,2 a4.~ a4 e'\breve*7/16~
  e\breve*5/16~ e2 cis4 gis\breve*5/16 dis'
  e b4. e2~ e4
}
