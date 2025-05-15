\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "80"
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
  Come to me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all you who la -- bor and are bur -- dened, and I will
  give you rest.
}
sopNotesAnt = \relative e' {
  c'8[ b] a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak e
  \allowBreak g
  \allowBreak g
  \allowBreak f[ e f]
  \allowBreak f4 \bar "'"
  \allowBreak d8
  \allowBreak e
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  g'2. s16 e\breve*7/16 d\breve*8/16~ d4.~ d4
}
tenorNotesAnt = \relative g {
  c2.~ s16 c\breve*7/16 a\breve*8/16~ a4. b4
}
bassNotesAnt = \relative c {
  e2. s16 c\breve*7/16 d\breve*8/16 f4. g4
}
