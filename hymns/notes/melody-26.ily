\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Melody 26"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  f4 f g a bes a g a \bar "'"
  a g c c g a bes a \bar ","
  g a g a g e d f \bar "'"
  g a g f e f( g) f( e) d \bar "||"
  d( e d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  \allowBreak d2.~
  \allowBreak d2~
  \allowBreak d2~
  \allowBreak d4~
  \allowBreak d4~
  \allowBreak d2
  \allowBreak c2
  \allowBreak f2
  \allowBreak e4~
  \allowBreak e4~
  \allowBreak e2
  \allowBreak d2
  \allowBreak c2~
  \allowBreak c4~
  \allowBreak c4~
  \allowBreak c2~
  \allowBreak c2
  \allowBreak d
  \allowBreak c
  \allowBreak a4
  \allowBreak bes2.
  \allowBreak a4.~
  \allowBreak a4.
}    
tenorNotes = \relative g {
  a2.~ a2~ a2~ a4~
  a4 bes2 g d' c4~
  c4~ c2 f, g e4~
  e4 f2~ f bes g f4
  f2. g4. f4.
}
bassNotes = \relative g {
  d2. f2 g f4~
  f4~ f2 g d a'4~
  a4 c,2~ c~ c~ c4~
  c4 f,2 a g a d4
  g,2. a4. d4.
}
