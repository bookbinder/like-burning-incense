\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "2"
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
  When you have lift -- ed up the Son of Man, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will know that I am he.
}
sopNotesAnt = \relative e' {
  r8 g8 e f g[ c] c b c a[ b] a a([ b] c4) b8 a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak g
  \allowBreak f[-- a]
  \allowBreak a
  \allowBreak b--
  \allowBreak a--
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative e' {
  s2 g\breve*5/16 f4.~ 2. g4 s16 f4~
  4. e4 d
}
tenorNotesAnt = \relative g {
  c2~ \breve*5/16~ 4.~ 2.~ 4~ s16 c4
  a4. c4 b
}
bassNotesAnt = \relative c {
  e2~ \breve*5/16 f4. d2. e4 s16 f4~
  4.~ 4 g
}
