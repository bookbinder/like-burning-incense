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
  Lift up your eyes, Je -- ru -- sa -- lem,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and see the great pow -- er of your king;
  your Sa -- vior comes to set you free.
}
sopNotesAnt = \relative e' {
  g4 g8 g g[ f] d f[ e] f g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak b
  \allowBreak a4( g) \bar ","
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f([ a] c4)
  \allowBreak c8
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2 d4. s4. e4. s16 f\breve*9/16 e\breve*5/16
  s4. f\breve*5/16~ f4 d
}
tenorNotesAnt = \relative g {
  e2 f4. a4. c4.~ s16 c\breve*9/16~ c\breve* 5/16~
  c4.~ c\breve*5/16~ c4 b
}
bassNotesAnt = \relative c {
  c2~ c2.~ c4. s16 f\breve*9/16 c\breve*5/16 e4. d\breve*5/16 f4 g
}
