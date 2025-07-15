\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-70"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak g4-3
  \allowBreak ees
  \allowBreak f
  \allowBreak aes( g)
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g-3 \bar "'"
  \allowBreak g
  \allowBreak ees-1
  \allowBreak f
  \allowBreak aes( g)
  \allowBreak aes
  \allowBreak bes
  \allowBreak bes
  \allowBreak bes \bar ","
  \allowBreak bes-4
  \allowBreak aes-3
  \allowBreak bes
  \allowBreak c-5( bes)
  \allowBreak aes
  \allowBreak bes-4
  \allowBreak aes
  \allowBreak g \bar "'"
  \allowBreak g-3
  \allowBreak ees
  \allowBreak f
  \allowBreak aes( g)
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g \bar "||"
  \allowBreak g-4( aes g)
  \allowBreak f4.( g4.) \bar "||"
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
