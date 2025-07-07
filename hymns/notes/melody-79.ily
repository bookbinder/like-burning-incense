\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-79"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak f4
  \allowBreak e
  \allowBreak d
  \allowBreak c( d e)
  \allowBreak e \bar "'"
  \allowBreak e
  \allowBreak f
  \allowBreak g( f)
  \allowBreak e
  \allowBreak d
  \allowBreak c( d)
  \allowBreak d \bar ","
  \allowBreak f
  \allowBreak g( a)
  \allowBreak a
  \allowBreak g( a)
  \allowBreak d,--( c--) \bar "'"
  \allowBreak f( g)
  \allowBreak a
  \allowBreak g( f)
  \allowBreak e
  \allowBreak d
  \allowBreak e
  \allowBreak e \bar "|"
  \allowBreak g
  \allowBreak a
  \allowBreak c
  \allowBreak c( a)
  \allowBreak a \bar "'"
  \allowBreak a( b)
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak e( f)
  \allowBreak g
  \allowBreak g \bar ","
  \allowBreak g
  \allowBreak a( b)
  \allowBreak a
  \allowBreak g( a)
  \allowBreak a \bar "'"
  \allowBreak a( b)
  \allowBreak g
  \allowBreak g
  \allowBreak e
  \allowBreak f( e)
  \allowBreak d
  \allowBreak d--( e--) \bar ","
  \allowBreak c
  \allowBreak d
  \allowBreak f
  \allowBreak e( f)
  \allowBreak d \bar "'"
  \allowBreak e
  \allowBreak f
  \allowBreak g( a)
  \allowBreak g
  \allowBreak f( e)
  \allowBreak d( e)
  \allowBreak e \bar "||"
  \allowBreak e( f e)
  \allowBreak d4.( e4.) \bar "||"
}
altoNotes = \relative c' {
  a2.~ a2.~
  <a c\shape #'((0.7 . 0) (0.7 . 0) (-0.7 . 0) (-0.7 . 0)) ~>4 c2 s2. a2.~ a4~
  a4 d2.~ d2 s2 f2. c2. d2 b4~
  b4 g'2 e2.~ e2~ e2. s2. d4~
  d4 f2. g2 f4 d2. c2 a2. b4 c4~
  c4 a2 c2 a4 c2~ c2. d2 s2 c4
  c2. a4. c4.
}    
tenorNotes = \relative g {
  f2. e2. s4 g2~
  <e\shape #'((1.5 . -.6) (1.5 . -.6) (-1.5 . -.6) (-1.5 . -.6)) ~ g>2. e2. f4~
  f4 f2. g2 a2~ a2. g2. a2 g4~
  g4 d'2 c2.~ c2~ c2.~ c2. b4~
  b4 c2.~ c2~ c4 a2. c2 f,2. e2~
  e4 f2 g2 f4 g2~ g2. a2~ a2~ a4
  g2. f4. a4.
}
bassNotes = \relative g {
  d2. a2.~ a4 c2~ c2. a2. d4~
  d4~ d2. e2 f2 d2. e2. f2 e4~
  e4~ e2 a2. c,2~ c2. <d a'>2. g4~
  g4 d2. e2 f4~ f2. e2 d2. a2~
  a4 f2 a2 d4 c2 e2. d2~ <d f>2 a4
  c2. d4. a4.
}
