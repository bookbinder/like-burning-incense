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
  O Wis -- dom, O ho -- ly Word of God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you go -- vern
  all cre -- a -- tion with your strong yet ten -- der care. Come
  and show your peo -- ple the way to sal -- va -- tion.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes g f g f
  \allowBreak ees
  \allowBreak f
  \allowBreak f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  f8 aes[ g] f g f f ees
  ees f \bar "" g[ aes] g g aes \bar "" bes4 \bar ","
  c4 c8 \bar "" bes[ aes] g \bar "" f g f \bar "" ees4 g8 aes
  \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c\breve*6/16 ees2 \parenthesize c4. s16 ees\breve*9/16~ ees\breve*5/16
  f4 ees4. f4. des4. ees2 c2
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*6/16 bes2 c4. s16 aes\breve*9/16 bes\breve*5/16~ bes4 g4.
  f4. bes4.~ bes2~ bes4 aes4
}
bassNotesAnt = \relative c {
  g'4 f\breve*6/16 ees4 c4 aes'4.~ s16
  <<
  { aes\breve*9/16 } \new Voice { c,\breve*9/16}
     >> ees\breve*5/16 des4
    c4. des4. bes4. c2 f2
}
