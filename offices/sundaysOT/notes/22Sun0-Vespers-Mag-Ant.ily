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
    Of what use is it to a man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to gain the whole world, if he pays
    for it by lo -- sing his soul?
}
sopNotesAnt = \relative e' {
  r8 g8 c4 b8 c a g f g4 
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak b--[ a]
  \allowBreak g4
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d4
  \allowBreak d8
  \allowBreak a'
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*9/16~ e4. f4.~ f4 \parenthesize c2~ s16 \parenthesize c4.
  d2.~ d4
}
tenorNotesAnt = \relative g {
  g\breve*9/16 c4.~ c4.~ c4~ c2~ s16 c4. a4. c4. b4
}
bassNotesAnt = \relative c {
  c\breve*9/16~ c4. f d4 e2 s16 a4. f2. g4
}
