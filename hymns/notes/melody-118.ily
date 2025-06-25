\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-118"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  g4( a) g( f) d e f g( a) a g \bar "'"
  g( a) g( f) d e f g( a) a g \bar ","
  a c( b) b a( g) f g( a) g( f) e \bar "'"
  g f( e) d e f g( a) a g \bar "||"
  g( a g) f4.( g4.) \bar "||"
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
