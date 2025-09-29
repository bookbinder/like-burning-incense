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
  If you are faith -- ful to my teach -- ing, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will in -- deed be my dis -- ci -- ples. You will know the truth
  and the truth will make you free.
}
sopNotesAnt = \relative e' {
  r8 g8 f g g[ c] c b c a[ b] a b a a4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak f[ a]
  \allowBreak g
  \allowBreak f([ g] a4)
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4
  \allowBreak r4 \bar "|"
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e f e]
  \allowBreak d
  \allowBreak d4( a') \bar "'"
  \allowBreak a8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative d' {
  s2 g\breve*5/16 f e s16 f\breve*10/16
  d2. c4 d\breve*5/16~ 2. r4.
  f4 d
}
tenorNotesAnt = \relative g {
  c2~ \breve*5/16~ c~ c~ s16 c\breve*10/16~
  4 b2 g4 a\breve*5/16~ 2. c4.~
  4 b
}
bassNotesAnt = \relative c {
  e2~ \breve*5/16 f c s16 d\breve*10/16
  g2.
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) ~
  << {\hideNotes g4 \unHideNotes }
     \new Voice { e4 } >>
  d\breve*5/16 f2. e4.
  d4 g
}
