\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-27"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak aes4
  \allowBreak aes
  \allowBreak bes
  \allowBreak c
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g \bar "'"
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes \bar ","
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes
  \allowBreak c
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g \bar "'"
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak aes
  \allowBreak g
  \allowBreak f \bar "||"
  \allowBreak f( g f)
  \allowBreak ees4.( f4.) \bar "||"
}
altoNotes = \relative c' {
  f2.~ f2~ f2 ees4~
  ees4~ ees2 \allowBreak des2~ des2 ees4~
  ees4 f2~ f2~ f2 ees4~
  ees4~ ees2 des2 ees2 c4
  c2.~ c4.~ c4.
}    
tenorNotes = \relative g {
  c2.~ c2~ c2 bes4~
  bes4 c2 aes2~ aes2~ <aes c~>4
  c4~ c2~ c2~ c2 bes4~
  bes4 c2 aes2 bes2 aes4
  aes2. g4. aes4.
}
bassNotes = \relative g {
  f2. ees2 des2 ees4~
  ees4 c2 des2 f2 aes4~
  aes4 f2 ees2 des2 ees4~
  ees4 c2 des2 c2 f4
  f2.~ f4.~ f4.
}
