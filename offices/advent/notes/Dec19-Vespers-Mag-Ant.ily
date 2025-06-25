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
  O Flower of Jes -- se's "stem, * " you have been raised up as a sign
  for all peo -- ples; kings stand si -- lent in your pre -- sence; the
  na -- tions bow down in wor -- ship be -- fore you. Come, let
  no -- thing keep you from co -- ming to our aid.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes f \bar "" g[ f ees] f f4 \bar "'"
  f8 ees f g[ aes] g g f aes g g[ f] \bar "" f[ ees] ees4 \bar ","
  aes8[ g] f g f ees f \bar "" g4 g \bar "'"
  f8 \bar "" aes g f ees f \bar "" g4 g8 aes \bar "" bes4 bes \bar ","
  c4 c8 \bar "" bes[ aes] g \bar "" f g f \bar "" ees4 ees8 g aes
  \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c\breve*5/16 ees2 c4. ees4~ ees\breve*13/16~
  ees\breve*7/16~ ees\breve*5/16 c\breve*5/16 ees2 f2 ees4.
  f4. des4. ees\breve*5/16 c4
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*5/16 bes2 aes4. bes4~ bes\breve*9/16~ bes2
  aes\breve*7/16 bes\breve*5/16 aes\breve*5/16 bes2~ bes2
  g4. f4. bes4.~ bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
  g'4 f\breve*5/16 ees4 c4 f4. g4 ees\breve*9/16 g2 c,\breve*7/16
  ees\breve*5/16 f\breve*5/16 ees2 des2 c4. des4. bes4.
  c\breve*5/16 f4
}
