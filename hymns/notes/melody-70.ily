\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-70"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  g4-3
  ees
  f
  aes( g)
  aes
  bes
  aes
  g-3 \bar "'"
  g
  ees-1
  f
  aes( g)
  aes
  bes
  bes
  bes \bar ","
  bes-4
  aes-3
  bes
  c-5( bes)
  aes
  bes-4
  aes
  g \bar "'"
  g-3
  ees
  f
  aes( g)
  aes
  bes
  aes
  g \bar "||"
  g-4( aes g)
  f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  ees2.-1 f2. ees2 d4-1~
  d4 ees2 f2.~ \allowBreak f2~ f4~
  f4-2 ees2-1 f2.\finger \markup "2-1" g2-2 ees4~
  ees4-1~ ees2 f2. ees2 d4
  ees2.-2 r4. d4.
}    
tenorNotes = \relative g {
  c2.-1~ c2.~ c2 bes4~
  bes4 c2~ c2. ees2 d4-1~
  d4 c2-2~ c2. d2 c4~
  c4-1~ c2~ c2.~ c2 bes4
  c2.-1~ c4. bes4.
}
bassNotes = \relative g {
  s2. f2.~ f2 g4~
  g4 s2 f2.~ f2 bes4-3~
  bes4 s2 aes2. g2 s4
  s4 bes2 aes2. f2 g4
  s2. aes4. g4.
}
