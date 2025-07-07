\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_116_10-19"
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
  I have prayed for you, Pe -- ter
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that your faith may not fail; and when you have turned
  to me, you must streng -- then the faith of your
  bro -- thers.
}
sopNotesAnt = \relative e' {
  f8 g aes4 g8 f aes--[ g] g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f--([g ] aes4)
  \allowBreak g8
  \allowBreak f--[ aes]
  \allowBreak aes4( g) \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak g4
  \allowBreak g8
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak bes[ c]
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak ees([ f] g4)
  \allowBreak g8
  \allowBreak aes
  \allowBreak g[ f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2. ees2 s16
  s4 c\breve*5/16 ees4~
  ees2~ ees4~ ees2 f\breve*8/16~ f4 c4 ees4~ ees2 c2
}
tenorNotesAnt = \relative g {
  aes2. bes2~ s16
  bes4 aes\breve*5/16~ aes4
  bes2~ bes4 c2 bes\breve*8/16 c4 aes4 bes4~ bes2~
  bes4 aes4
}
bassNotesAnt = \relative c {
  f2. ees2 s16
  g4 f\breve*5/16 c4
  ees2~ ees4 c2 des\breve*8/16 f2 g4 c,2 f2
}
