\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-30"
melodyKeysig =  \key f \minor 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  f4 f( f ees) c( bes) ees( f) aes aes( g) f( g) g \bar "'"
  bes bes( aes) g aes( g) f g( f) ees( f) f4 \bar ","
  bes bes g bes( bes c) bes aes g f( g f ees) \bar "'"
  g aes( bes) g aes( g) f g( f) ees( f) f \bar "||"
  f( g f) ees4.( f) \bar "||"
}
altoNotes = \relative c' {
  s4 c2. bes2 c2. ees2~ s2 ees4~
  ees4~ 2. <c~ f>2. \allowBreak <c~ ees>2 c~ c4
  ees2.~ 2~ 2~ 2 des2. bes4~
  bes4 c2. bes2.~ 2~ 2 aes4
  c2.~ 4.~ 4.
}    
tenorNotes = \relative g {
  s4 aes2. g2 aes2.~ 2 s2 bes4~
  bes4~ 2. s2. s2 bes2 aes4
  g2.~ g2 aes2~ 2~ 2. g4~
  g4 f2.~ 2. ees2 g f4
  aes2. g4. aes4.
}
bassNotes = \relative g {
  f4~ 2.~ 2~ 2. c2 s2 ees4~
  ees g2. f c2~ 2 f4
  ees2. s2 s2 f2 des2. ees4~
  ees4~ 2. des2. c2~ 2 s4
  f2.~ 4.~ 4.
}
