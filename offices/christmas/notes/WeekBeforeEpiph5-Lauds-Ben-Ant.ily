\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "4"
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
  The Lord God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has come to his peo -- ple and set them free.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak g8
  \allowBreak b[ c a]
  \allowBreak a4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak g
  \allowBreak f[ a g]
  \allowBreak g4
  \allowBreak g8
  \allowBreak a
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*8/16 s16 e2~ 4.~ 4.~ 4 d
}
tenorNotesAnt = \relative g {
  e\breve*8/16 s16 g2 a4. c4.~ 4 b
}
bassNotesAnt = \relative c {
  c\breve*8/16~ s16 2~ 4.~ 4. f4 g
}
