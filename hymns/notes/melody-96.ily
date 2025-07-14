\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-96"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak d4
  \allowBreak e
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak g( a)
  \allowBreak g
  \allowBreak f( e f) \bar "'"
  \allowBreak d4
  \allowBreak e
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g \bar ","
  \allowBreak a( c)
  \allowBreak c( c d)
  \allowBreak c
  \allowBreak c( b)
  \allowBreak a( g)
  \allowBreak a
  \allowBreak g
  \allowBreak f( e f) \bar "'"
  \allowBreak d4
  \allowBreak e
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g \bar "||"
  \allowBreak g( a g)
  \allowBreak f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  d2.~ d2~ d2.~ d2~ d4~
  d2.~ d2 \allowBreak f2. d4
  e2 a2 s2 g2 s2 e2 c2 d4~
  d2.~ d2~ d2.~ d4
  s2. d4.~ d4.
}    
tenorNotes = \relative g {
  a2.~ a2 g2.~ g2 a4~
  a2. g2 c2. b4
  c2~ c2~ s2 c2~ s2 c2~ c2 a4~
  a2. g2 c2. b4
  c2.~ c4. b4.
}
bassNotes = \relative g {
  f2. d2 e2. a,2 d4
  f2. e2 d2. g4~
  g2 f2 s2 e2 s2 c2 a2 d4
  f2. e2 d2. g4
  e2. d4. g4.
}
