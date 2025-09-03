\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-64"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  a4 a( a g) e( d) g a a( b) a( g) a \bar "'"
  e e( a) g g( f) d e( f g) f( e) e \bar ","
  e( d) c e g a a( b) a( g) a \bar "'"
  e e( a) g g( f) d e( f g) f( e) e \bar "||"
  e( f e) d4.( e) \bar "||"
}
altoNotes = \relative c' {
  s4 e2.~ 2 d e f e4
  e4 2. d \allowBreak c2. d2 b4
  c2 s2 e2 f2~ f e4
  s4 e2. d c~ 2 b4
  c2. s4. b4.
}    
tenorNotes = \relative g {
  s4 c2.~ 2 b c d c4~
  c4 a2.~ 2.~ \allowBreak a2.~ 2 g4~
  g2~ g c~ c d c4~
  c4 a2.~ 2.~ 2.~ 2 g4
  a2.~ 4. g
}
bassNotes = \relative g {
  a4~ 2.~ 2~ 2~ 2~ 2~ 4
  a4~ << { \hideNotes a2. \unHideNotes }
         \new Voice { \voiceTwo c,2. } >>
  d2. a d2 e4
  c2~ <c~ e>2 c2 f d a4~
  a4 c2. d a d2 e4
  a,2. f'4. e
}
