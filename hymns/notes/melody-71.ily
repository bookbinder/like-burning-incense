\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-71"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  g4 ees g bes bes c aes bes \bar "'"
  bes c aes bes aes g f g \bar ","
  bes aes f g aes g f ees \bar "'"
  ees g aes bes aes g f g \bar "||"
  g( aes f) f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  bes4~ bes2 ees2~ ees~ ees4~
  ees4~ ees2~ ees2~ \allowBreak ees2~ ees4~
  ees4~ ees2 s2 c2~ c4~
  c4 bes2 ees2~ ees~ ees4
  ees2. c4. ees4.
}    
tenorNotes = \relative g {
  s4 g2~ g2 f g4~
  g4 aes2 c aes bes4
  g4 aes2~ s2 aes2 g4~
  g4 s2 g2 c bes4
  bes2. aes4. bes4.
}
bassNotes = \relative g {
  ees4~ ees2~ ees2~ ees~ ees4~
  ees4 aes,2~ aes c ees4~
  ees4 c2 s2 aes2 c4~
  c4 ees2~ ees~ ees~ ees4
  ees2.~ ees4.~ ees4.
}
