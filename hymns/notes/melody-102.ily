\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-102"
melodyKeysig =  \key bes \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  \allowBreak f4
  \allowBreak g( bes)
  \allowBreak bes
  \allowBreak bes( a)
  \allowBreak g( f)
  \allowBreak bes
  \allowBreak c
  \allowBreak a( g f) \bar "'"
  \allowBreak bes( c)
  \allowBreak d( bes)
  \allowBreak c
  \allowBreak bes( a g)
  \allowBreak a
  \allowBreak a
  \allowBreak g
  \allowBreak f \bar ","
  \allowBreak f
  \allowBreak g( bes)
  \allowBreak bes
  \allowBreak bes( a)
  \allowBreak g( f)
  \allowBreak bes
  \allowBreak c
  \allowBreak a( g f) \bar "'"
  \allowBreak bes( c)
  \allowBreak d( bes)
  \allowBreak c
  \allowBreak bes( g)
  \allowBreak a
  \allowBreak g( a)
  \allowBreak g
  \allowBreak f \bar "||"
  \allowBreak f( g f)
  \allowBreak ees4.( f4.) \bar "||"
}
altoNotes = \relative c' {
  f2 s2 d2 s2 ees2 f2~ f4~
  f2~ f2.~ \allowBreak f2 s2 ees2 d4~
  d4~ d2. ees2~ ees~ ees f~ f4~ \bar "'"
  f2~ f2. g2. ees2. c4
  bes2. c4.~ c4.
}    
tenorNotes = \relative g {
  bes2~ s2 bes2 s2 c2~ c2 a4
  bes2~ bes2.~ bes2~ s2 bes2 a4~
  a4 bes2. g2 bes c~ c a4
  bes2~ bes2.~ bes2.~ bes2. a4
  bes2.~ bes4. a4.
}
bassNotes = \relative g {
  d2 s2 g2 s2 c,2 f2~ f4
  d2~ d2. g2 s2 c,2 d4~
  d4 g2. ees2~ ees c f~ f4
  d2 g2. ees2. c2. f4
  d2. c4. f4.
}
