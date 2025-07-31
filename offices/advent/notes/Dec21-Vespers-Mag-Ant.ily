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
  O Ra -- diant Dawn,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  splen -- dor of e -- ter -- nal light,
  sun of jus -- tice: come, shine on those who dwell in dark -- ness
  and the sha -- dow of death.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes[ f g f] ees[ f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g4
  \allowBreak g8
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes \bar ","
  \allowBreak c4
  \allowBreak bes8[ aes]
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g4
  \allowBreak g8
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c4. des2. c\breve*7/16 s16 f4. ees2 f2
  ees4 f4. des\breve*5/16 ees\breve*5/16~ ees2 c4
}
tenorNotesAnt = \relative g {
  bes4 aes4. bes2. aes\breve*7/16 s16 bes4.~ bes2~ bes2 g4 f4.
  bes\breve*5/16~ bes\breve*5/16~ bes2 aes4
}
bassNotesAnt = \relative c {
  g'4 f4.~ f2.~ f\breve*7/16 s16 ees4.~ ees2 des2 c4 des4.
  bes\breve*5/16 ees\breve*5/16 c2 f4
}
