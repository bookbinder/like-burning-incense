\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Eph_1_3-10"
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
  The robe you wear
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is white as spot -- less snow; your face is ra -- diant
  like the sun.
}
sopNotesAnt = \relative e' {
  r8 g8 f[ a] c b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak f[ g]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 f4. g4. s16 e\breve*5/16 c4. f4.~ f4
  r4 d4
}
tenorNotesAnt = \relative g {
  c4~ c4. d4. s16 c\breve*5/16~ c4.~ c4.~ c4~ c4 b4
}
bassNotesAnt = \relative c {
  c'4 a4. g4. s16 c,\breve*5/16 e4. d4. f4 a4 g4
}
