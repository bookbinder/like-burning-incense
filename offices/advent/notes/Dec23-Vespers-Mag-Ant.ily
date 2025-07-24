\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "52"
antKeysig = \key f \minor
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
  O Em -- man -- u -- el,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  king and law -- gi -- ver, de -- sire of the na -- tions,
  Sa -- vior of all peo -- ple, come and set us free,
  Lord our God.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes[ f] g[ f] ees[ f] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f4
  \allowBreak f8
  \allowBreak g[ f]
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak f4 \bar "'"
  \allowBreak g8
  \allowBreak aes
  \allowBreak g
  \allowBreak g[ aes]
  \allowBreak bes4
  \allowBreak bes \bar ","
  \allowBreak c4
  \allowBreak c8
  \allowBreak bes[ aes]
  \allowBreak g
  \allowBreak f([ g f] ees4) \bar "'"
  \allowBreak g8[ aes]
  \allowBreak g
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c\breve*5/16 des2 c4~ s16 c\breve*5/16 bes\breve*5/16 ees2
  des2 ees\breve*5/16 f2 ees4. f4. des4. ees4
  des4. c4
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*5/16 bes2 aes4~ s16 aes\breve*5/16 g\breve*5/16 aes2
  bes2~ bes\breve*5/16~ bes2 g4. f bes~ bes4~
  bes4. aes4
}
bassNotesAnt = \relative c {
  g'4 f\breve*5/16~ f2~ f4 s16 ees\breve*5/16~ ees\breve*5/16 c2
  bes2 ees\breve*5/16 des2 c4. des bes c4
  ees4. f4
}
