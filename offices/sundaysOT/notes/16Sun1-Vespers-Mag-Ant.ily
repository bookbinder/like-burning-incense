\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
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
    Ma -- ry has cho -- sen the bet -- ter part, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and it shall not be ta -- ken from her.
}
sopNotesAnt = \relative e' {
  g4 g8 g a g f g--[a c] g g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak c
  \allowBreak b([ c] a4)
  \allowBreak a8
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 f4.~ f2 s16 s4 s4. f4.~ f2. d4
}
tenorNotesAnt = \relative g {
  c2~ c4.~ c2~ c\breve*5/16~ s16 c4.~ c2. b4
}
bassNotesAnt = \relative c {
  c2 f4. d2 e\breve*5/16 s16 a4. f2. g4
}
