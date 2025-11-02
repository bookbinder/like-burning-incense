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
  From him,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  through him, and in him all things ex -- ist: glo -- ry
  to him for e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8[ aes] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8[ aes]
  \allowBreak g
  \allowBreak ees
  \allowBreak aes4
  \allowBreak aes
  \allowBreak bes8[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak f4( ees) \bar ","
  \allowBreak f
  \allowBreak ees8
  \allowBreak des
  \allowBreak f[ aes]
  \allowBreak g
  \allowBreak ees4
  \allowBreak ees \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees4~ 4~ s16 ees2~ 4 des f2 c des~
  4. s\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  aes4 bes s16 c4 bes aes2~ 2~ 2~ 2~
  4.~ \breve*5/16~ 4~ 4 g
}
bassNotesAnt = \relative c {
  c4 ees~ s16 ees2 f des aes des~
  4. c\breve*5/16 bes4 ees2
}
