\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-3"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak a4
  \allowBreak a( g)
  \allowBreak a
  \allowBreak g( f)
  \allowBreak e( d c)
  \allowBreak e( f)
  \allowBreak d
  \allowBreak d \bar "'"
  \allowBreak a'( c)
  \allowBreak c( b)
  \allowBreak g
  \allowBreak a
  \allowBreak g( a)
  \allowBreak f( e)
  \allowBreak g( a)
  \allowBreak a( b a) \bar ","
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak f( e)
  \allowBreak d
  \allowBreak d( e)
  \allowBreak d( c)
  \allowBreak c \bar "'"
  \allowBreak e
  \allowBreak d( g)
  \allowBreak g( a g)
  \allowBreak f( e)
  \allowBreak d( c)
  \allowBreak e( f)
  \allowBreak d
  \allowBreak d \bar "||"
  \allowBreak d( e d)
  \allowBreak c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  d2~ s2 d2 c2.~ c2. s4
  d2 e2.~ e2. \allowBreak f2 s2 e2~ e4~
  e4~ e2 d2. s2 s2 s4
  s4 d2 <c~ e>2. c2~ c2~ c2. a4
  a2.~ a4.~ a4.
}    
tenorNotes = \relative g {
  f2 s2 a2~ a2. g2. f4~
  f2 a2. c2.~ c2 b2~ b2 c4~
  c4 a2~ a2.~ a2 s2 g4~
  g4~ g2 s2. s2 a2 g2. f4
  f2. e4. f4.
}
bassNotes = \relative g {
  d2~ s2 d2 a2.~ a2. d4~
  d2 c2.~ c2. d2~ d2 a'2~ a4~
  a4 c,2 d2. f2 s2 e4~
  e4 b2~ b2. a2~ a2~ a2. d4
  d2.~ d4.~ d4.
}
