\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-7"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  c4( d) e g g( e) d f e( d) d \bar ","
  c( e) g a a g a( b c) b( g) a \bar "|"
  a a( b) g g( f) e d( c) d( e) e \bar ","
  c( d) e g g( e) d f e( d) d \bar "||"
  d( e d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  c2~ c b2. c a4
  s2 e'2 s2 f4~ f2 g2 e4~
  e f2. s2. a,2 s2 b4
  c2~ c b2. c a4
  a2.~ a4.~ a4.
}    
tenorNotes = \relative g {
  a2 g2~ 2.~ 2. f4
  c'2~ 2~ s2 c4 d2~ d c4~
  c~ 2.~ 2.~ f,2 s2 g4
  a2 g2~ 2.~ 2. f4
  f2. g4. f4.
}
bassNotes = \relative g {
  f2 e2~ 2. a, d4
  <e g>2 c s2 f4 d2 e a4~
  a f2. <e~ g>2. e2~ s2 e4
  a,2 c2 e2. a,2. d4
  f,2. a4. d4.
}
