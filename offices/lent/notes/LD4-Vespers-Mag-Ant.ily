\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Magnificat"
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
  By my -- self, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I can do noth -- ing. I judge as I am told to judge,
  and my sen -- tence is just.
}
sopNotesAnt = \relative e' {
  g8 g g([ f] d4) d8[ f] g a4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g4
  \allowBreak f8
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak b([ c] a4)
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak g
  \allowBreak a([ b] a4)
  \allowBreak a8
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 d\breve*7/16 e2 s16 r4 f4 d2 e\breve*9/16~
  \breve*7/16 f2. d4
}
tenorNotesAnt = \relative g {
  c4 a\breve*7/16 c2~ s16 c2~ 4 b a\breve*9/16
  c\breve*7/16~ 2. b4
}
bassNotesAnt = \relative c {
  e4 f\breve*7/16 c2 s16 d2 g c,\breve*9/16~
  \breve*7/16 f2. g4
}
