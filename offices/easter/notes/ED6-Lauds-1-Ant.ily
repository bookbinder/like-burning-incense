\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_51"
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
  Christ gave him -- self up for us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as a sa -- cri -- fi -- cial of -- ferring to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g4 g8[ a] g f[ a] c[ b] a g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak a4
  \allowBreak a8
  \allowBreak b
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*5/16 f\breve*5/16 g2 s16 f\breve*8/16 d4. e4 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c\breve*5/16~ c2~ s16 c\breve*8/16 b4. c4~ c b
}
bassNotesAnt = \relative c {
  c\breve*5/16 d\breve*5/16 e2 s16 f\breve*8/16 g4.~ g4~ g2
}
