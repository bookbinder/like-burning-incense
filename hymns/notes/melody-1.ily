\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Melody 1"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  a4 a a a a a( b) a a \bar "'"
  a a a g f g( a) g g \bar ","
  f a a g f g g a \bar "'"
  g g g f d f e d \bar "||"
  d( e d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  c2. e2 f2. e4
  f2. e2 c2. d4
  f2. e2 s2 f4
  d2.~ d2 c2 a4
  a2.~ a4.~ a4.
}    
tenorNotes = \relative g {
  a2.~ a2~ a2.~ a4
  c2.~ c2~ c2. b4
  c2. b2 c2~ c4
  b2. a2 g2 g4
  a2. g4. f4.
}
bassNotes = \relative g {
  a,2. c2 d2. c4
  f2. c2 e2. g4
  a2. e2~ e2 f4
  g2. d2 a2 d4
  f2. e4. d4.
}
