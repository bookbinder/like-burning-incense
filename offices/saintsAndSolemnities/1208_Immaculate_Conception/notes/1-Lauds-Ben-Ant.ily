\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "7"
antKeysig = \key c \major
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
  The Lord God said to the ser -- pent:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I will make you e -- ne -- mies, you and the wo -- man,
  your off -- spring and her off -- spring; she will crush
  your head, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ c] c4 b8[ c] a g a[ g] g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak b
  \allowBreak c
  \allowBreak d
  \allowBreak c
  \allowBreak b4 \bar "'"
  \allowBreak c4
  \allowBreak a8
  \allowBreak c
  \allowBreak c[ b]
  \allowBreak b4 \bar "'"
  \allowBreak a4
  \allowBreak a8[ b]
  \allowBreak b
  \allowBreak a
  \allowBreak a4
  \allowBreak a8[ g]
  \allowBreak g4
  \allowBreak r4 \bar "|"
  \allowBreak g4
  \allowBreak g8
  \allowBreak e[ g]
  \allowBreak g
  \allowBreak f([ e] d4) \bar "'"
  \allowBreak a'8
  \allowBreak a[ b]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 g2 f2 e2 s16 g\breve*8/16~
  g\breve*8/16~ g4 f2 e4 d2. e4.~
  e4. d4~ d4. f4 d2
}
tenorNotesAnt = \relative g {
  c4~ c2~ c2~ c2 s16 b2 c4 d4
  e2 d2~ d2. c4~ c4 b2 c4.~
  c4. a4~ a4. c4~ c4 b
}
bassNotesAnt = \relative c {
  c4 e2 f2 c2 s16 g'\breve*8/16~
  g\breve*8/16 d2. f4 g2. c,4.~
  c4. d4 f4.~ f4 g2
}
