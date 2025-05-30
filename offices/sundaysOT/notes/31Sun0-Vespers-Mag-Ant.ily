\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You have one tea -- cher, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} and he is in hea -- ven:
    Christ your Lord.
}
sopNotesAnt = \relative e' {
  g8 a c4 a8[ g] g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak a
  \allowBreak c4
  \allowBreak c \bar "'"
  \allowBreak b8([ c] b4)
  \allowBreak a8
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*9/16 s16 f2 g f\breve*5/16 d2
}
tenorNotesAnt = \relative g {
  c\breve*9/16~ s16 c2~ c2~ c\breve*5/16~ c4( b)
}
bassNotesAnt = \relative c {
  c\breve*9/16 s16 f2 e d\breve*5/16 g2
}
