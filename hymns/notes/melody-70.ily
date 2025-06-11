\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-70"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  g4 ees f aes( g) aes bes aes g \bar "'"
  g ees f aes( g) aes bes bes bes \bar ","
  bes aes bes c( bes) aes bes aes g \bar "'"
  g ees f aes( g) aes bes aes g \bar "||"
  g( aes g) f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  ees2. f2. ees2 d4~
  d4 ees2 f2.~ f2~ f4~
  f4 ees2 f2. g2 ees4~
  ees4~ ees2 f2. ees2 d4
  ees2. r4. d4.
}    
tenorNotes = \relative g {
  c2.~ c2.~ c2 bes4~
  bes4 c2~ c2. ees2 d4~
  d4 c2~ c2. d2 c4~
  c4~ c2~ c2.~ c2 bes4
  c2.~ c4. bes4.
}
bassNotes = \relative g {
  s2. f2.~ f2 g4~
  g4 s2 f2.~ f2 bes4~
  bes4 s2 aes2. g2 s4
  s4 bes2 aes2. f2 g4
  s2. aes4. g4.
}
