\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_108"
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
  O God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a -- rise a -- bove the hea -- vens, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8[ c] c4( b)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak f[ a]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  g'4~ g\breve*5/16 s16 e\breve*5/16~ e\breve*5/16 f4 d2
}
tenorNotesAnt = \relative g {
  c4 d\breve*5/16 s16 c\breve*5/16~ c\breve*5/16~ c4~ c b
}
bassNotesAnt = \relative c {
  e4 g\breve*5/16 s16 c\breve*5/16 c,\breve*5/16 d4 g2
}
