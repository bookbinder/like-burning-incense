\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-112"
melodyKeysig =  \key aes \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  ees4 ees( f) f( ees) des( c) des( ees) ees4 \bar "'"
  f aes aes( g) f( ees) des( ees) ees \bar ","
  aes bes( c) c bes( aes) bes( aes) f--( ees--) \bar "'"
  f( aes) f f( ees) des( c) des( ees) ees4 \bar "||"
  ees( f ees) des4.( ees4.) \bar "||"
}
altoNotes = \relative c' {
  s2. s2 s2 s2 s4
  c2 des2 aes bes2~ 4
  ees2. f2.~ 2 c~
  c2.~ 2~ 2 bes2~ 4
  s2. s4. bes4.
}    
tenorNotes = \relative g {
  aes2.~ 2~ 2~ 2 g4
  aes2 f aes2~ 2 g4
  aes2.~ 2. f2 g aes2.~ 2~ 2~ 2 g4
  aes2.~ 4. g4.
}
bassNotes = \relative g {
  c,2. des2 f ees2~ 4~
  ees2 des c ees~ 4
  c2. f des2 c
  f2. aes,2 bes ees~ 4
  c2. f4. ees
}
