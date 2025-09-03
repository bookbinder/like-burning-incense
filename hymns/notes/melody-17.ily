\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-17"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  d4( a') g a c( b) a~ a g a a \bar "'"
  a( g) e( g) f e( d) d( g) a( g) f e \bar ","
  d( a') a g( c) c( c b) a( g) f g a( g f e d) \bar "'"
  f( g) a f g( f) e( d) g( a g) f( e) d \bar "||"
  d( e d) c4.( d) \bar "||"
}
altoNotes = \relative c' {
  d2 e2~ 2 s2 d2 e4~
  e2~ 2. s2 s2 \allowBreak d2. c4
  d2 e2.~ 2.~ 2 d2~ d2~ s2 d4~
  d2 s2 c2 s2 e2. c2 a4
  b2. a4.~ 4.
}    
tenorNotes = \relative g {
  a2 b c s2 b2 c4~
  c2 a2. a2~ s2 a2.~ 4~
  a2 b2. c2.~ 2 a2~ 2 s2 b4
  a2 s2 g2 s2 a2. g2 f4
  g2.~ 4. f
}
bassNotes = \relative g {
  f2 e a~ s2 a2~ 4~
  a2~ << { \hideNotes a2. \unHideNotes }
         \new Voice { \voiceTwo \omit Stem c,2. } >>
  <d f~>2 s2 f2. s4
  f2 e2. a c,2 d f s2 g4
  d2 s2 e2 s2 c2. a2 d4
  g,2. a4. d
}
