\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Col_1_12-20"
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
  In the be -- gin -- ning,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be -- fore time be -- gan, the Word was God; to -- day
  he is born, the Sa -- vior of the world.
}
sopNotesAnt = \relative e' {
  r8 ees8 f ees ees[ aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak des8
  \allowBreak f([ g] f4)
  \allowBreak f8
  \allowBreak f4( ees) \bar "|"
  \allowBreak r8
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak des([ f] aes4)
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2 ees\breve*5/16 s16 des2 c4. bes\breve*5/16~ bes2~
  bes4 s2 des\breve*5/16~ des\breve*5/16 bes4
}
tenorNotesAnt = \relative g {
  aes2~ aes\breve*5/16~ s16 aes2~ aes4.~ aes\breve*5/16 g2~
  g4 aes2~ aes\breve*5/16~ aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
  aes'2 c,\breve*5/16 s16 des2 aes4. des\breve*5/16 ees2~ ees4
  c2 f\breve*5/16 bes,\breve*5/16 ees4
}
