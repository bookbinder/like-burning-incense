\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "1"
antKeysig = \key c \major
psalmnum = "Ps_49_2-13"
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
  Seek the things of heav -- en,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  not those that are on the earth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8[ a] g e4 f8 g[ c] c4
  \noBreak \hideNotes c16 \unHideNotes
  \allowBreak c8
  \allowBreak b[ c]
  \allowBreak d
  \allowBreak c4
  \allowBreak b8
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak f[ a]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s2. g'\breve*5/16~ s16 g\breve*7/16 d4. f4 d2
}
tenorNotesAnt = \relative g {
  c2.~ \breve*5/16 s16 d\breve*7/16 b4. a4 c b
}
bassNotesAnt = \relative c {
  e2.~ \breve*5/16 s16 g\breve*7/16~ 4.~ 4~ 2
}
