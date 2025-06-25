\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "52"
psalmtonestruct = "44"
psalmnum = "Magnificat"
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
  Are you the One whose co -- ming was fore -- "told, * " or should we
  look for a -- no -- ther? Tell John what you see: the blind have their
  sight re -- stored, the dead are raised to life, the poor have the
  good news preached to them, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 c8 f[ g] f f4 f8 ees[ f] ees ees ees ees4( c) \bar "'"
  c8 c c \bar "" f([ g] aes4) f8 aes \bar "" bes[ aes g] \bar "" g4 r4 \bar "|"
  g8[ aes] \bar "" f[ c'] bes aes \bar "" bes4 \bar ","
  bes8 \bar "" aes4 aes8 aes bes aes \bar "" f4 \bar "'"
  f8 \bar "" aes aes bes aes \bar "" f4 \bar "'"
  g8 \bar "" aes4 g8 f \bar "" g[ aes g] g4 \bar "" f8[ c'] c \bar "" bes4 \bar "'"
  bes8 \bar "" aes[ f] \bar "" g([ aes] g4 f8) \bar "" f4 \bar "||"
  }
altoNotesAnt = \relative c' {
  r8 c8~ c2.~ c\breve*12/16 ees2~ ees4~ ees4.~ ees2~ ees4
  c2 f4. c2. des4. ees2 des4. c2 ees\breve*5/16 f4. ees4.
  c4 des\breve*5/16 c4
}
tenorNotesAnt = \relative g {
  g4 f2. g\breve*5/16 f4( g2) s8 f2 aes4 g4. bes2
  c4 aes2~ aes4.~ aes2.~ aes4.~ aes2~ aes4.~ aes2
  bes\breve*5/16 aes4. g4. aes4 bes\breve*5/16 aes4n
}
bassNotesAnt = \relative c {
  ees4 aes,2. c\breve*5/16~ c2. s8 aes2 c4 ees4.~ ees2
  c4 f2 des4. aes2. bes4. c2 des4. f2
  ees\breve*5/16~ ees2. f4~ f\breve*5/16~ f4
}
