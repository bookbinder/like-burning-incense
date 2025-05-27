\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "B"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    Lord, if you will, you can make me clean. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    And Je -- sus said, I do will it; you are made clean.
}
sopNotesAnt = \relative e' {
  g8[ c] a g \bar "" a4 \bar "" g8 g f a \bar "" a4( g)
  \hideNotes g16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak f
  \allowBreak e
  \allowBreak d8--[e-- d--]
  \allowBreak c
  \allowBreak d[-- a']
  \allowBreak g
  \allowBreak a
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
  e2 f4 \parenthesize c4 f4 d\breve*5/16~ s16 d4 s2
  s4 f4 e f d2
}
tenorNotesAnt = \relative c' {
  c2~ c4~ c2 b\breve*5/16 s16 a4~ a2
  c2~ c~ c4( b)
}
bassNotesAnt = \relative c' {
  c2 f,4 e d g\breve*5/16 s16 d4 f2~
  f2 c4 d g2
}
