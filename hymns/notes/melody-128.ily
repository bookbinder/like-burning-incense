\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-128"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak d4
  \allowBreak f
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak a
  \allowBreak g
  \allowBreak g \bar "'"
  \allowBreak d
  \allowBreak f
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak a
  \allowBreak g
  \allowBreak g \bar ","
  \allowBreak a
  \allowBreak c( d)
  \allowBreak c
  \allowBreak c
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak g \bar "'"
  \allowBreak d
  \allowBreak f
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak a
  \allowBreak g
  \allowBreak g \bar "||"
  \allowBreak g( a g)
  \allowBreak f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  s4 d2 s2 f2 d4~
  d4~ d2 s2 \allowBreak f2 e4~
  e4~ e2. g2 f2 d4~
  d4~ d2 s2 f2 d4
  c2.~ c4. d4.
}    
tenorNotes = \relative g {
  r8*2 a2 s2 c2 b4~
  b4 a2 s2 c2 b4~
  b4 c2.~ c2~ c2 b4~
  b4 a2 s2 c2 b4
  a2.~ a4. b4.
}
bassNotes = \relative g {
  r8*2 d2~ s2 d2 g4~
  g4 d2~ s2 d2 e4~
  e4 a2. e2 d2 g4~
  g4 d2~ s2 d2 g4
  s2. d4. g4.
}
