\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-125"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  a4 a a a d, f e d \bar "'"
  a' a b g a c b a \bar ","
  a b c d c a c b( a g) \bar "'"
  a a b g e g a a \bar "||"
  a( b a) g4.( a4.) \bar "||"
}
altoNotes = \relative c' {
  s4 e2 d c d4~
  d4~ d2 g2~ g e4~
  e4 g2 a f g s4
  s2. e2~ e~ e4
  d2. e4.~ e4.
}    
tenorNotes = \relative g {
  \tieDown a4~ \tieUp <a~ c>2  a2 g f4~
  f4~ <f a>2 c' d c4~
  c d2~ d~ d~ d~ <b d>4~
  <b d~>4 d2 b2~ b c4
  a2. b4. c4.
}
bassNotes = \relative g {
  s2. f2 a, d4~
  d s2 e2~ e a4~
  a4 g2 f2 d2 g2~ g4~
  g4 <f a>2 e2 a,2~ a4
  f'2. e4. a,4.
}
