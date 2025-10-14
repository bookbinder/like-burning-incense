\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
antKeysig = \key aes \major
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
  I have pow -- er
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to lay down my life, and I have pow -- er to
  take it up a -- gain.
}
sopNotesAnt = \relative e' {
  ees8 aes aes[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak ees4 \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees4~ \breve*5/16 s16 c2 bes\breve*5/16 des4.~ \breve*5/16 bes4
}
tenorNotesAnt = \relative g {
  aes4 bes\breve*5/16 s16 aes2 g\breve*5/16 aes4.~ \breve*5/16 g4
}
bassNotesAnt = \relative c {
  c4 ees\breve*5/16~ s16 ees2~ \breve*5/16 des4. bes\breve*5/16 ees4
}
