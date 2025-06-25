\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "Melody 26"
melodyKeysig =  \key c \major 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  f4-2 f g a bes a g a \bar "'"
  a g c c g a bes a\finger "4-5" \bar ","
  g a g a-5 g e f g \bar "'"
  g-3 a g f-4 e f( g) f( e) d \bar "||"
  d( e d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  d2.-1~ d2~ d2~ d4~
  d4~ d2 \allowBreak c2 f2 e4\finger "1-2"~
  e4~ e2 d2-1 c2~ c4~
  c4~ c2~ c2 d c \change Staff = "down" \voiceThree a4 \change Staff = "up" \voiceTwo
  bes2. a4.~ a4.
}    
tenorNotes = \relative g {
  a2.-1~ a2~ a2~ a4~
  a4 bes2 g \change Staff = "up" \voiceTwo d' \change Staff = "down" \voiceThree c4-1~
  c4~ c2 f,-2 g e4\finger "3-2"~
  e4 f2~ f \change Staff = "up" \voiceTwo bes \change Staff = "down" \voiceThree g f4
  f2. g4. f4.
}
bassNotes = \relative g {
  d2.-5 f2 g f4~
  f4~ f2 g d a'4-2~
  a4 c,2~ c~ c~ c4\finger "5-4"~
  c4 f,2 a g a d4
  g,2. a4. d4.
}
