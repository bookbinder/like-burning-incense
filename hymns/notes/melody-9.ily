\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-9"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  d4-- c d f( g) f \bar "'"
  g a g \allowBreak f g-- a-- \bar ","
  g( a) b a g( f) e \bar "'"
  d f e f d-- c-- \bar "|"
  d-- c d \allowBreak f( g) f \bar "'"
  g a g f e-- d-- \bar "'"
  f-- e f d( c) d \bar "||"
  d( e d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  s2. d2 s4
  e2~ e2~ e4 f4
  d2~ s2 \allowBreak d2 c4
  s2 s2 s2
  s4 s2 d2 s4
  c2~ c2 a4~ a4~
  a4 bes2 a2~ a4
  bes2. a4.~ a4.
}    
tenorNotes = \relative g {
  a4--~ a2~ a2 s4
  c2~ c2 a2
  b2~ s2 b2 a4~
  <f a~>2 <f a~>2 <e a>2
  <f a--~>4 <g a~>2 a2 s4
  g2~ g2~ g4-- f--~ f--
  g2~ g2 f4
  g2.~ g4. f4.
  
}
bassNotes = \relative g {
  <d~ f>4 <d~ g>2 d2 s4
  c2 a2 d2
  g2 s2 e2 s4
  s2 d2 a2
  s4 e'2 d2 s4
  e2
  a,2 d4~ d4
  g,4~ g2 a2 d4
  g,2. a4. d4.
}
