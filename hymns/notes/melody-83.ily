\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-83"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  f4 f f f( e) d( c) d( e) e e \bar "'"
  g g( a) a( g) a( b a) g( f) g g( f) e \bar ","
  f e( f) g g( f) d( c) d( e) d( c) c \bar "'"
  g' g f g( g a) g f( e) d( e) e \bar "||"
  e( f e) d4.( e4.) \bar "||"
}
altoNotes = \relative c' {
  c2. a2 s2 c2.~ c4~
  c4~ c2 s2 f2. \allowBreak s2 d2. c4~
  c4 e2. d2 s2 a2 s2 c4~
  c2.~ c2 s2 d2 s2 c4 c2. r4. b4.
}    
tenorNotes = \relative g {
  f2.~ f2~ s2 f2. g4~
  g4 c2~ s2 c2.~ <a~ c>2 a2.~ a4~
  a4~ a2.~ a2~ s2 a2 s2 g4~
  g2. s2 s2 a2~ s2 a4 a2.~ a4. g4.
}
bassNotes = \relative a, {
  a2. f2 s2 a2. c4~
  c4 e2 s2 f2.~ f2 d2. a4~
  a4 c2. d2 s2 f2 s2 e4~
  e2. c2 s2 d2 s2 a4
  g'2. f4. e4.
}
