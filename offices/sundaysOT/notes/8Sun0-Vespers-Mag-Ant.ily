\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "1"
psalmtonestruct = "34"
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
    Seek first the king -- dom of God and his jus -- tice, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and all the rest will be giv -- en to you as well, al -- le -- lu -- ia.

}
sopNotesAnt = \relative e' {
  g8[ a g] g4 g8 f e f d8([ e] f4) f8 g g[ b a g] g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak c[ b]
  \allowBreak c
  \allowBreak a[ g]
  \allowBreak g
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak b[ a]
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2. \parenthesize c\breve*9/16 d2~ d4. s16 g4.
  s2 f\breve*5/16~ f\breve*5/16 d2
}
tenorNotesAnt = \relative c' {
  c2.~ c\breve*9/16~ c2 b4. s16 c4.~ c2 c\breve*5/16~ c\breve*5/16~ c4 b
}
bassNotesAnt = \relative c' {
  c2. a\breve*9/16 g2~ g4. s16 e4.~ e2
  f\breve*5/16 d\breve*5/16 g2
}
