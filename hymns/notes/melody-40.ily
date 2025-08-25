\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-40"
melodyKeysig =  \key c \minor 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  ees4( f) f( aes) g f ees aes bes( c) c \bar "'"
  bes( c) aes g f( aes) aes( g) f( g) f ees \bar ","
  ees4( f) f( ees) f f( g) aes c bes( aes) aes \bar "'"
  bes( c) g( aes) g f ees g( aes) f f \bar "||"
  f( g f) ees4.( f4.) \bar "||"
}
altoNotes = \relative c' {
  c2~ 2. bes2 c2.~ 4~
  c2~ 2~ 2~ \allowBreak 2~ 2.~ 4~
  c2~ 2.~ 2. ees2.~ 4
  d2 c2.~ 2~ 2.~ 4
  2. bes4. c4.
}    
tenorNotes = \relative g {
  aes2~ 2. g2 aes2. g4~
  g2 s2 aes2 g2 aes2. g4
  bes2 aes2.~ 2. bes2. aes4~
  aes2 g2.~ 2 bes2. aes4
  aes2. g4. aes
}
bassNotes = \relative g {
  s2 f2.~ 2~ 2. ees4~
  ees2 f2~ 2~ 2 aes,2. c4~
  c2 f2. s2. g2. f4~
  f2 ees2. c2~ 2. f4
  s2. s4. f4.
}
