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
  All that God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  pro -- mised to the vir -- gin through the mes -- sage of an
  an -- gel has been ac -- com -- plished.
}
sopNotesAnt = \relative e' {
  c'8[ b] a a4
  \noBreak \noBreak \hideNotes a16 \unHideNotes
  \allowBreak a8[ b]
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak a4
  \allowBreak a8
  \allowBreak g
  \allowBreak f
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak f[ e d]
  \allowBreak d4
  \allowBreak a'8
  \allowBreak g
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  g'4.~ g4 s16 f\breve*10/16 \parenthesize c\breve*5/16
  d2.~ d4~ d2
}
tenorNotesAnt = \relative g {
  c4.~ c4~ s16 c\breve*10/16~ c\breve*5/16~
  c2.~ c4~ c b
}
bassNotesAnt = \relative c {
  e4. f4~ s16 f\breve*10/16 e\breve*5/16
  d2. a'4 g2
}
