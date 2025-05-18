\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "80"
antKeysig = \key c \major
psalmnum = "Benedictus"
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
  He lived a ho -- ly life;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Be -- ne -- dict, bles -- sed in name and in grace.
}
sopNotesAnt = \relative e' {
  r8 f8 f e e d d4
  \noBreak \hideNotes d16 \unHideNotes
  \allowBreak a'8
  \allowBreak a
  \allowBreak a4
  \allowBreak g8
  \allowBreak a
  \allowBreak g
  \allowBreak f4
  \allowBreak f8
  \allowBreak e
  \allowBreak e4( d) \bar "||"
}
altoNotesAnt = \relative c' {
  a2~^"Different psalm tone. Does it work?"  a2 s16 c2~ c4.~ c2 a2
}
tenorNotesAnt = \relative g {
  f2 g4 f4~ s16 f2 e4. a4 g f2
}
bassNotesAnt = \relative c {
  d2~ d2 s16 f,2 c'4.~ c2 d2
}