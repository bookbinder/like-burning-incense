\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-127"
melodyKeysig =  \key f \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  d4 c d f g a g g \bar "'"
  f g a bes( a) f g a g \bar ","
  g g a f( d) f e d c \bar "'"
  d c d f g a g g \bar "||"
  g( a f) f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  s2. s2 f2 d4~
  d4~ d2~ <d~ f>2. \allowBreak d2~ d4~
  d4 c2 <a~ d>2. a2~ a4~
  a4 c2 d f d4
  d2.~ d4.~ d4.
}    
tenorNotes = \relative g {
  bes2. <a c~>2 c bes4~
  bes~ bes2 s2. c2 bes4~
  bes4 g2 s2. f2 e4~
  e4 f2 a c bes4
  bes2. a4. bes4.
}
bassNotes = \relative g {
  g2.~ g2~ g2~ g4~
  g4~ g2 d2.~ d2 g4~
  g4 e2 d2.~ d2 a4~
  a4~ a2 d2~ d2 g4
  bes,2. d4. g4.
}
