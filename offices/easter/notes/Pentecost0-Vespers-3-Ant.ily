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
  The Spir -- it who comes from the Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will glo -- ri -- fy me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 aes g f f[ aes] g aes bes[ c bes] bes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak \breathe
  \allowBreak f8
  \allowBreak ees
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 ees2 f2. s16 ees2 c4~ 2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes2~ 2.~ s16 aes2 g4 bes aes
}
bassNotesAnt = \relative c {
  f\breve*5/16 c2 des2. s16 c2~ 4 f2
}
