\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "7"
antKeysig = \key c \major
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
  The Spir -- it of truth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who pro -- ceeds from the Fa -- ther will be my wit -- ness,
  and you will al -- so bear wit -- ness to me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g f d f4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak a
  \allowBreak c4
  \allowBreak c8
  \allowBreak a[ g]
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak a4
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak g
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d4 \bar "'"
  \allowBreak f8
  \allowBreak g[ a]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  c4 d4.~ 4( e4)~ s16 e4 f2 g\breve*7/16 d4~
  4 s4 f2. d f4 d2
}
tenorNotesAnt = \relative g {
  e4 f4. a4( c)~ s16 c4~ 2~ \breve*7/16~ 4
  b4 c4~ 2. a c4~ 4 b
}
bassNotesAnt = \relative c {
  c4~ 4.~ 2~ s16 c4 f2 e\breve*7/16 g4~
  4 e d2. f~ 4 g2
}
