\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
melody = "melody-53"
melodyKeysig =  \key g \minor 
% Transposition interval
master-from-pitch = c
master-to-pitch = c

sopNotes = \relative e' {
  c4 d ees f( g) c, d( ees f) ees( d) d \bar ","
  f g( bes) bes bes( a) g( f) g( a) a a \bar "|"
  g g( bes c) bes bes( a) g( f) g( a g) f( ees) d( ees f g) \bar ","
  c, d ees g( a) g f( ees f) ees( d) d \bar "||"
  d( ees d) c4.( d4.) \bar "||"
}
altoNotes = \relative c' {
  c2.~ 2. bes c2 bes4
  f'2 s2 g2 s2 ees2. f4~
  f4 d2 g f s2 ees2. d2 bes4~ bes2~ bes4
  c2.~ <c ees>2. bes2. c2 a4
  bes2. a4.~ a
}    
tenorNotes = \relative g {
  g2.~ 2.~ 2. a2 bes4~
  bes2~ s2 bes2~ s2 bes2. c4~
  c4 bes2~ 2~ 2~ s2 bes2. a2 g4~ 2~ 4~
  g2. s2. f2. g2 f4
  g2.~ g4. f4.
}
bassNotes = \relative g {
  ees2.~ 2. << {\hideNotes g2.~ \unHideNotes }
               \new Voice { \voiceTwo s2. } >>
  g2~ g4
  d2 s2 ees2 s2 c2. f4~
  f4~ 2 ees2 d2 s2 c2. d2 s4 f2 ees4~
  ees2. c2. d2.~ d2~ d4
  f2. ees4. d4.
}
