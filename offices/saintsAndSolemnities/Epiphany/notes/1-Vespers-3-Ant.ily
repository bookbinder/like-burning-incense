\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Rev_15_3-4"
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
  All the peo -- ple, whom you have made,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come and wor -- ship be -- fore you, Lord.
}
sopNotesAnt = \relative e' {
  \allowBreak ees8
  \allowBreak f
  \allowBreak f[ g]
  \allowBreak aes
  \allowBreak aes
  \allowBreak f
  \allowBreak aes
  \allowBreak aes4( bes)
  \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  s4 c\breve*6/16 f\breve*5/16 s16 ees\breve*7/16~
  4. c2
}
tenorNotesAnt = \relative g {
  bes4 aes\breve*6/16~ \breve*5/16~ s16 aes\breve*7/16
  g4. aes2
}
bassNotesAnt = \relative c {
  g'4 f\breve*6/16 des\breve*5/16 s16 c\breve*7/16~
  c4. f,2
}
