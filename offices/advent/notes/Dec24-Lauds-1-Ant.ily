\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = ""
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
  Beth -- le -- hem in Ju -- dah's land,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  how glo -- rious your fu -- ture!
  The king who will rule my peo -- ple comes from you.
}
sopNotesAnt = \relative e' {
  g8[ f] d d e f[ a] a g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak f[ a]
  \allowBreak c
  \allowBreak b[ c a]
  \allowBreak a4
  \allowBreak b8
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s8 s4. \parenthesize c4. s16
  e2~ e\breve*8/16 f\breve*8/16 e4 d4
}
tenorNotesAnt = \relative g {
  a\breve*8/16 c4.~ s16
  c2~ c\breve*8/16~ c\breve*8/16~ c4 b4
}
bassNotesAnt = \relative c {
  d\breve*8/16 e4. s16
  a,2 c\breve*8/16 d\breve*8/16 f4 g4
}
