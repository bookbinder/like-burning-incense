\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Melody 26"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak f4
  \allowBreak f
  \allowBreak g
  \allowBreak a
  \allowBreak bes
  \allowBreak a
  \allowBreak g
  \allowBreak a \bar "'"
  \allowBreak a
  \allowBreak g
  \allowBreak c
  \allowBreak c
  \allowBreak g
  \allowBreak a
  \allowBreak bes
  \allowBreak a \bar ","
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak e
  \allowBreak d
  \allowBreak f \bar "'"
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak f( g)
  \allowBreak f( e)
  \allowBreak d \bar "||"
  \allowBreak d( e d)
  \allowBreak c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  d2.~ d2~ d2~ d4~
  d4~ d2 c2 f2 e4~
  e4~ e2 d2 c2~ c4~
  c4~ c2~ c2 d c a4
  bes2. a4.~ a4.
}    
tenorNotes = \relative g {
  a2.~ a2~ a2~ a4~
  a4 bes2 g d' c4~
  c4~ c2 f, g e4~
  e4 f2~ f bes g f4
  f2. g4. f4.
}
bassNotes = \relative g {
  d2. f2 g f4~
  f4~ f2 g d a'4~
  a4 c,2~ c~ c~ c4~
  c4 f,2 a g a d4
  g,2. a4. d4.
}
