\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-118"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak g4( a)
  \allowBreak g( f)
  \allowBreak d
  \allowBreak e
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g \bar "'"
  \allowBreak g( a)
  \allowBreak g( f)
  \allowBreak d
  \allowBreak e
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g \bar ","
  \allowBreak a
  \allowBreak c( b)
  \allowBreak b
  \allowBreak a( g)
  \allowBreak f
  \allowBreak g( a)
  \allowBreak g( f)
  \allowBreak e \bar "'"
  \allowBreak g
  \allowBreak f( e)
  \allowBreak d
  \allowBreak e
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g \bar "||"
  \allowBreak g( a g)
  \allowBreak f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  c2 d2.~ d2~ d2. e4~
  e2 d2.~ d2 \allowBreak f2. e4~
  e4~ e2. d2. e2 d2 c4~
  c4 d2.~ d2~ d2.~ d4
  s2. d4.~ d4.
}    
tenorNotes = \relative g {
  e2 f2.~ f2~ f2. g4
  c2 a2.~ a2 c2. b4~
  b4 a2.~ a2. b2~ b2 a4~
  a4~ a2. c2~ c2. b4
  c2.~ c4. b4.
}
bassNotes = \relative g {
  c,2~ c2.~ c2~ c2.~ c4~
  c2 d2.~ d2~ d2. e4~
  e4 s2. f2. e2~ e2 s4
  s4 d2.~ d2 g2.~ g4
  e2. g4.~ g4.
}
