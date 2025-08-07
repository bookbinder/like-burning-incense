\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Wis_9_1-6,_9-11"
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
  May the Ho -- ly One from heav -- en
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  come down like gen -- tle rain; may the earth burst in -- to blos -- som
  and bear the ten -- der Sav -- ior.
}
sopNotesAnt = \relative e' {
  \allowBreak g8
  \allowBreak a
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak b
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8[ a]
  \allowBreak a4
  \allowBreak g8
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d[ a']
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak a4
  \allowBreak b8
  \allowBreak c
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16 s2 s16 g4 f2. e2 d4.~ d2 f\breve*5/16 g2 d2
}
tenorNotesAnt = \relative g {
  c\breve*7/16 d2 s16 c4~ c4. a4. c2
  a4.~ a2 c\breve*5/16~ c2~ c4 b
}
bassNotesAnt = \relative c {
  c'\breve*7/16 b2 s16 e,4 f2. c2
  d4. f2~ f\breve*5/16 e2 g2
}
