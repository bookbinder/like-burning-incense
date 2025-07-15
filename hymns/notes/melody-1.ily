\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Melody 1"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak a4-4
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak a( b)
  \allowBreak a
  \allowBreak a \bar "'"
  \allowBreak a-5
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g( a)
  \allowBreak g
  \allowBreak g \bar ","
  \allowBreak f-3
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak g
  \allowBreak a \bar "'"
  \allowBreak g-5
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak d
  \allowBreak f
  \allowBreak e
  \allowBreak d \bar "||"
  \allowBreak d( e d)
  \allowBreak c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  c2.-1 e2\finger "2-1" f2. e4
  f2.-3 e2 \allowBreak c2. d4
  f2. e2 s2 f4
  d2.-2~ d2 c2 a4
  a2.~ a4.~ a4.
}    
tenorNotes = \relative g {
  a2.~ a2~ a2.~ a4
  c2.~ c2~ c2. b4
  c2.-1 b2 c2~ c4
  b2.-1 a2-1 g2 g4
  a2. g4. f4.
}
bassNotes = \relative g {
  a,2. c2 d2. c4
  f2. c2 e2. g4
  a2.-3 e2~ e2 f4
  g2.-2 d2-4 a2 d4
  f2. e4. d4.
}
