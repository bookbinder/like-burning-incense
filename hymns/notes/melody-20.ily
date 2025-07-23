\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-20"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak g4( f ees)
  \allowBreak ees( aes)
  \allowBreak g( f)
  \allowBreak f( c')
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak g(-- bes c f,) \bar ","
  \allowBreak aes4
  \allowBreak g( f)
  \allowBreak f( g)
  \allowBreak bes
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g( f aes aes f) \bar "|"
  \allowBreak f4
  \allowBreak f
  \allowBreak f
  \allowBreak f( c')
  \allowBreak c
  \allowBreak c
  \allowBreak bes
  \allowBreak c( bes aes bes c bes aes g f) \bar ","
  \allowBreak g
  \allowBreak bes
  \allowBreak bes
  \allowBreak bes( c bes c bes aes g f)
  \allowBreak aes( g)
  \allowBreak f
  \allowBreak ees( f)
  \allowBreak f( g f ees f) \bar "||"
  \allowBreak f( g f)
  \allowBreak ees4.( f4.) \bar "||"
}
altoNotes = \relative c' {
  s2. ees2~ ees2 f2. d2 ees4~ ees2 c4~
  c4~ c2 s2 d2 ees2~ ees2*5/2 s2. f2~ f2.
  g2 f2~ f2 ees2 d4~
  d4 ees2~ ees2.~ ees2 c2.~ c2
  d2. c2~ c2~ c4 c2.~ c4.~ c4.
}    
tenorNotes = \relative c' {
  c2.~ c2~ c2~ c2. bes2~ bes4-- g2 aes4~ aes4~ aes2 s2
  bes2 g2 bes2 c2~ c4~ c2.~ c2~ c2.~ c2~ c2 aes2 c2 bes4~
  bes4 g2 bes2. aes2~ aes2.~ aes2 bes2. g2 bes2 aes4
  aes2. g4. aes4.
}
bassNotes = \relative g {
  aes2. s2 bes2 aes2. s2 ees4~ ees2 s4 s4 s2 s2
  s2 ees2~ ees <f aes>2~ <f aes>4~ <f aes~>2. aes2~ aes2.
  ees2 f2~ f~ f s4 s4 ees2 g2. s2 s2. f2
  bes,2. c2~ c2 f4 aes,2. c4. f4.
}
