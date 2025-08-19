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
  Christ, you are Light from Light:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  when you ap -- peared on the earth, the wise men
  of -- fered their gifts to you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak g4
  \allowBreak g8
  \allowBreak a
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak g
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak a[ c g]
  \allowBreak g4
  \allowBreak a8
  \allowBreak g
  \allowBreak g
  \allowBreak g[ f]
  \allowBreak d
  \allowBreak d4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  c2 f4. e\breve*5/16 s16 f2 g4.
  f\breve*8/16 d4.~ 4. c4~ 4 b
}
tenorNotesAnt = \relative g {
  e2 a4. c\breve*5/16~ s16 c2~ 4.~
  c\breve*8/16 a4.~ 4. f4 d2
}
bassNotesAnt = \relative c {
  c2~ 4.~ \breve*5/16 s16 f2 e4.
  d\breve*8/16~ 4. f4.
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0))~
  << { \hideNotes f4 \unHideNotes }
     \new Voice { \voiceTwo a,4 } >>
  g2
}
