\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "2"
antKeysig = \key c \major
psalmnum = "1_Tim_3_16"
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
  As they came down from the moun -- tain
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus com -- man -- ded them: Tell no one of the
  vi -- sion un -- til the Son of Man has ri -- sen from the dead.
}
sopNotesAnt = \relative e' {
  r8 g8 e f g[ c] b c a[ g] g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a4
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d4 \bar ","
  \allowBreak d8[ e]
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak e
  \allowBreak f
  \allowBreak g[ a g]
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak g[ c]
  \allowBreak c
  \allowBreak c4
  \allowBreak c8
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak b
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
  
}
tenorNotesAnt = \relative g {
  
}
bassNotesAnt = \relative c {
  
}
