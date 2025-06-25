\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Like the sun in the mor -- ning "sky, * " the Sa -- vior of the world
  will dawn; like rain on the mea -- dows he will de -- scend to rest in the
  womb of the Vir -- gin, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 g g[ d] f g g[ a] g g4 g8 a4 g8 f g \bar "" a[ c] b
  \bar "" g8([ a] g4) \bar ","
  g8 \bar "" f[ e] d c \bar "" d[ e f] f4 c8 d f \bar ""
  g[ f] a  \bar "" b([ c] a4) a8 a
  \bar "" a[ g] f g \bar "" a[ g] f \breathe g[ a] a \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative c' {
  s2. f4. g4. f\breve*5/16 g4. d4~ d4.~ \bar ""
  d4 s4 s4. s4 s4. s4. e2.
  f2 d4. f4. d2
}
tenorNotesAnt = \relative g {
  c4 a2 c4.~ c4.~ c\breve*5/16~ c4.~ c4 b4.
  a4 g a\breve*8/16~ a4.~ a2.~ a2~ a4. c4.~ c4 b4
}
bassNotesAnt = \relative c {
  e4 f2~ f4. e4. d\breve*5/16 e4. g4~ g4.
  d4 e f\breve*8/16 d4. c2.
  d2 f2. g2
}
