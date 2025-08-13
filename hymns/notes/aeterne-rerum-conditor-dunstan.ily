\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Aeterne Rerum Conditor"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  f8
  f
  g
  a
  bes
  a
  g
  a4 \bar "'"
  a8
  g
  c
  c
  g
  a
  bes
  a4( g) \bar ","
  a8
  a
  g
  a
  g
  f
  e
  f4 \bar "'"
  g8
  a
  g
  f
  e
  f[ g]
  e
  d4 \bar "||"
  d8[ e d]
  c4( d4) \bar "||"
}
altoNotes = \relative c' {
  s4. f4 e4 f4
  c8~ c2~ \allowBreak c8 d8 e2
  c8 d4  e s2
  c8~ c2 d4 c8 a4
  bes4. a2
}    
tenorNotes = \relative g {
  a8~ a4 s4 s4 s4. s2 s4 s2
  s8 s4 s4 a8[ g] a4 s8 s4 g4 bes g8 f4
  g4. e4 f
}
bassNotes = \relative g {
  f8 d2 c4 f4. e2 f4 c2
  a8 bes4 c d2 e8 f4 c4 bes4 c8 d4
  g,4. a4 d,4
}
