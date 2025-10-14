\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_72_12-19"
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
  All the peo -- ples of the earth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will be blessed in him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g4 a8 c[ d] c b a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak c
  \allowBreak b[-- c]
  \allowBreak \breathe
  \allowBreak a8
  \allowBreak b
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  g'\breve*10/16 s16 r4 f4.~ 2 d
}
tenorNotesAnt = \relative g {
  c\breve*12/16~ s16 c4.~ 2~ 4 b
}
bassNotesAnt = \relative c {
  e\breve*12/16 s16 d4. f2 g
}
