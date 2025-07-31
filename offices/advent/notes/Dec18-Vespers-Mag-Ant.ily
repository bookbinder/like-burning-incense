\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key f \minor
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
  O sa -- cred Lord of an -- cient Is -- ra -- el,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who showed
  your -- self to Mo -- ses in the burn -- ing bush, who gave him the
  ho -- ly law on Si -- nai moun -- tain: come, stretch out your
  migh -- ty hand to set us free.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes8 aes aes f g f ees f f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak aes[ g]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes \bar ","
  \allowBreak c4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees4
  \allowBreak f8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c\breve*7/16 ees2 c\breve*14/16 s16
  f4. ees4.~ ees\breve*5/16~ ees\breve*5/16
  f2 ees4 f4. des4. ees2. c4
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*7/16 bes2 aes\breve*8/16 s16 bes2.~ bes2.
  aes\breve*5/16 bes\breve*5/16 bes2 g4 f4. bes4.~ bes2.
  aes4
}
bassNotesAnt = \relative c {
  g'4 f\breve*7/16 ees4 c4 f\breve*8/16 s16 g2. ees2.
  c\breve*5/16 ees\breve*5/16 des2 c4 des4. bes4.
  c4. ees4. f4
}
