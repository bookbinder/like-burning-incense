\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Rev_15_3-4"
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
  The Lord is my strength,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I shall al -- ways praise him, for he has be -- come
  my Sav -- ior, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 a[ g] e f g4( c)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4 \bar "'"
  \allowBreak a'8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative e' {
  s2. g2 s16 f2 e\breve*11/16
  d4.~ 4. f4 d2
}
tenorNotesAnt = \relative g {
  c2.~ 2~ s16 c2~ \breve*11/16
  a4.~ 4. c4~ c b
}
bassNotesAnt = \relative c {
  e2.~ 2 s16 f2 c\breve*11/16
  d4. f4.~ 4 g2
}
