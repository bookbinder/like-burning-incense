\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_46"
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
  The streams of the riv -- er
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  glad -- den the ci -- ty of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g4 g8 c b[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak b8
  \allowBreak c
  \allowBreak a
  \allowBreak b4
  \allowBreak a8
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s4 s4 s16 e4.~ \breve*7/16~ 4 d2
}
tenorNotesAnt = \relative g {
  c2. d4 b s16 a4. c\breve*7/16~ 4~ 4 b
}
bassNotesAnt = \relative c {
  e2. g2 s16 c,4.~ \breve*7/16 f4 g2
}
