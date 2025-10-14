\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "29"
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
  What is born of the flesh is flesh,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and what is born of the spir -- it is spir -- it, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c8 c c[ des] c bes ees[ f] aes g([ f] ees4)
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak des[ c]
  \allowBreak c4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ des]
  \allowBreak c4
  \allowBreak c \bar "||"
}
altoNotesAnt = \relative c' {
  s2.^"Different psalm tone. Does it work?" s4. s4 s\breve*5/16 s16 des2
  c aes4 g4. aes4 g2
}
tenorNotesAnt = \relative g {
  g2. c4. bes4~ \breve*5/16~ s16 bes2
  ees,2~ 4~ 4. f4~ 4 ees
}
bassNotesAnt = \relative c {
  ees2.~ 4.~ 4 g\breve*5/16 s16 bes,2
  aes2 c4~ 4.~ 4~ 2
}
