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
  Je -- sus said: Ma -- ry.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  She turned to him and said: Rab -- bo -- ni,
  which means Tea -- cher.
}
sopNotesAnt = \relative e' {
  g8[ a] g g4 c8[ b] b4
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak g[ c b]
  \allowBreak b4 \bar "'"
  \allowBreak b8
  \allowBreak b([ c] a4)
  \allowBreak a8[ g]
  g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 g'\breve*5/16 s16 e\breve*5/16 f4. r4. g4. e2 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16 b\breve*5/16 s16 c\breve*5/16~ c4. e d c2 b
}
bassNotesAnt = \relative c {
  e\breve*5/16 g s16 c\breve*5/16 f,4. g2.~ g2~ g
}
