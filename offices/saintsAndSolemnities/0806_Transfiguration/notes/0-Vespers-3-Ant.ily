\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "68"
antKeysig = \key g \major
psalmnum = "Rev_19_1-7"
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
  Lord, how good it is
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for us to be here; if you wish, let us build three tents here,
  one for you, one for Mo -- ses and one for E -- li -- jah.
}
sopNotesAnt = \relative e' {
  g4 a8 a[ b] a a4
  \noBreak \noBreak \hideNotes a16 \unHideNotes
  \allowBreak g8
  \allowBreak fis
  \allowBreak g
  \allowBreak e4
  \allowBreak d4
  \allowBreak r4 \bar "|"
  \allowBreak g8
  \allowBreak a
  \allowBreak b[ d]
  \allowBreak b
  \allowBreak b
  \allowBreak a[ b c]
  \allowBreak c4
  \allowBreak c8[ b]
  \allowBreak b4( a) \bar ","
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak e4 \bar "'"
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak g4
  \allowBreak a8
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  d4. e\breve*8/16 s16 a,2. d2. e4.~
  e2 d b\breve*5/16~ b4. c2~ c~ c4 b
}
tenorNotesAnt = \relative g {
  g4.~ g\breve*8/16 s16 fis2. g2.~ g4.~
  g2 fis g\breve*5/16~ g4.~ g2~ g d
}
bassNotesAnt = \relative c {
  b4. c\breve*8/16 s16 d2. b2. c4.~
  c2 d2 e\breve*5/16 d4. c2 g~ g
}
