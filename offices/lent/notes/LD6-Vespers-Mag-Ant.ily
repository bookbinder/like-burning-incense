\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "50"
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
  No one
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  could lay a hand on Je -- sus, be -- cause his time had
  not yet come.
}
sopNotesAnt = \relative e' {
  f8[ aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak bes[ aes]
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees[ f]
  \allowBreak g4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16~ s16 4. f4. c\breve*7/16 des4.~ 4 c4~ 4
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ s16 aes4.~ 4.~ \breve*7/16~ 4.~ 4 g aes
}
bassNotesAnt = \relative c {
  f\breve*5/16 s16 ees4. des aes\breve*7/16 des4.~ 4 ees f
}
