\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_146"
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
  The Spi -- rit of the Lord rests u -- pon me;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he has sent me to preach his joy -- ful mes -- sage to the poor.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ f] d d e f[ a] g f g4 g
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak b[ c a]
  \allowBreak a4
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d[ a']
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 d\breve*9/16 \parenthesize c2. s16 f2. \parenthesize c\breve*5/16
  d4.~ d4~ d4
}
tenorNotesAnt = \relative g {
  c4 a\breve*9/16 c2.~ s16 c2.~ c\breve*5/16~
  c4.~ c4 b
}
bassNotesAnt = \relative c {
  c4 f\breve*9/16 e2. s16 d2. e\breve*5/16
  f4. a4 g
}
