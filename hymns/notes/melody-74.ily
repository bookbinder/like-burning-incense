\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-74"
melodyKeysig =  \key ees \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak g4--
  \allowBreak aes
  \allowBreak g
  \allowBreak f( g)
  \allowBreak g4-- \bar "'"
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g--
  \allowBreak g-- \bar ","
  \allowBreak g( f)
  \allowBreak ees
  \allowBreak g
  \allowBreak bes( c)
  \allowBreak bes-- \bar "'"
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak bes( c)
  \allowBreak bes \bar "|"
  \allowBreak bes( c)
  \allowBreak d
  \allowBreak c
  \allowBreak bes( c bes)
  \allowBreak g( aes bes--) \bar "'"
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f( g)
  \allowBreak g-- \bar "'"
  \allowBreak g--
  \allowBreak aes
  \allowBreak g
  \allowBreak f( g)
  \allowBreak g \bar "||"
  \allowBreak g( aes g)
  \allowBreak f4.( g4.) \bar "||"
}
altoNotes = \relative c' {
  ees2. d2~ d4 c2 s2 ees2 d2 ees2~
  ees2~ ees4 f2~ f2~ f2~ f4 g2~ g2 f2. ees2~ ees4
  f2 s2 d2 ees4~ ees2. d2~ d4 ees2. d4.~ d4.
}    
tenorNotes = \relative g {
  c2.~ c2 bes4-- aes2 s2 bes2~ bes2 c2 bes2~ bes4-- c2 ees2~ ees2 d4~
  d2 bes2~ bes2.~ bes2~ bes4--
  c2~ s2 c2~ c4--~ c2.~ c2 bes4 c2.~ c4. bes4.
}
bassNotes = \relative g {
  s2. g2~ g4 s2 s2 ees2 s2 s2 g2~ g4 f2~ f2 bes2~ bes4
  g2~ g2 d2. ees2 g4
  f2 s2 c2~ c4 bes'2. aes2 g4 c,2. g'4.~ g4.
}
