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
  E -- ven if you have no faith in my words,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you should at least be -- lieve the ev -- i -- dence
  of the works I do in God's name.
}
sopNotesAnt = \relative e' {
  f4 f8 ees f g[ aes] bes4 bes8[ c] bes aes[ f] f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak bes
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak c8
  \allowBreak f,4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 f\breve*7/16~ 4 c\breve*5/16 s16 ees2.
  f\breve*11/16 c2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes\breve*7/16 c4 aes\breve*5/16 s16 bes2.~
  \breve*11/16~ 4 aes
}
bassNotesAnt = \relative c {
  f\breve*5/16~ \breve*7/16~ 4~ \breve*5/16 s16 ees2.
  des\breve*11/16 f2
}
