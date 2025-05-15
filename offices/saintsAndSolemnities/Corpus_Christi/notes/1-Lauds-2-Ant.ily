\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Dan_3_57-88,_56"
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
  Ho -- ly priests
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will of -- fer in -- cense and bread to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8[ c] c b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak g
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  g'4.~ g4. s16 e4. f2~ f4. g4. f4 d2
}
tenorNotesAnt = \relative g {
  c4. d4. s16 c4.~ c2~ c4.~ c4.~ c4~ c4 b
}
bassNotesAnt = \relative c {
  e4. g4. s16 a4. f2~ f4. e4. d4 g2
}
