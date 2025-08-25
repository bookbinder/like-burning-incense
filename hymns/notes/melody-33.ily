\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-33"
melodyKeysig =  \key c \minor 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  ees ees( f) f f( ees) aes g f ees \bar "'"
  aes bes c bes( aes) bes bes( c) c--( bes--) \bar ","
  aes bes c bes aes( g) aes( bes aes) f-- f-- \bar "'"
  f( bes) aes aes( g) f( g) g f ees \bar "|"
  ees f aes f g aes bes aes \bar "'"
  c bes aes( g) aes( bes aes) f ees( f) f \bar "||"
  f( g f) ees4.( f4.) \bar "||"
}
altoNotes = \relative c' {
  s2. s2. c2. ees4~
  ees2 c2. f2. \allowBreak ees2 \bar ","
  c2 s2 ees2~ 2. des2 f2. c2 s2 \allowBreak des2 bes4
  ees2~ s2 <c~ ees>2. c4
  ees2 s2 des2.~ 2. c4
  c2. bes4. c4.
}    
tenorNotes = \relative g {
  c2. bes aes~ 4~
  aes2~ 2.~ 2.~ aes4-- g4--
  aes2~ s2 aes2~ 2.~ 2
  bes2. aes2~ s2 aes2 g4
  aes2 s2 s2. aes4~
  aes2~ s2 aes2. g aes4
  aes2. g4. aes4.
}
bassNotes = \relative g {
  aes2. g f c4~
  c2 f2. des2. ees4~ ees
  f2 s2 c2~ 2. des2~ 2. f2 s2 bes,2 ees4
  c2~ s2 c2. f4
  c2 s2 bes2.~ 2. f'4
  f2.~ f4.~ f
}
