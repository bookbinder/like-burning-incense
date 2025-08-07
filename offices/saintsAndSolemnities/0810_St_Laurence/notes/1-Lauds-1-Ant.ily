\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_63_2-9"
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
  My soul clings to you, my God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be -- cause I en -- dured death by fire for your sake.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak g8
  \allowBreak g4
  \allowBreak b8[ c]
  \allowBreak a
  \allowBreak a
  \allowBreak c
  \allowBreak b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak b8
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak a4
  \allowBreak b8[ c]
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak g4 g \bar "||"
}
altoNotesAnt = \relative c' {
  e2 f4. g4~ g4. s16 e\breve*5/16 f2. d2
}
tenorNotesAnt = \relative g {
  c2~ c4.~ c4 d4. s16 c\breve*5/16~ c2.~ c4 b
}
bassNotesAnt = \relative c {
  c2 d4. e4 g4. s16 a\breve*5/16 f2. g2
}
