\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "1"
psalmtonestruct = "34"
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
    A -- men, A -- men I say to you: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Who -- e -- ver be -- lieves in me will live for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ c] a a[ g] f g[ a] a g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak b
  \allowBreak c
  \allowBreak d
  \allowBreak c[ a]
  \allowBreak c
  \allowBreak c4( b) \bar "'"
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak \breathe
  \allowBreak a8
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s8 f2. d\breve*6/16 s16 e4. g\breve*5/16 f\breve*7/16 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c2. b\breve*6/16 s16 a4. d\breve*5/16~ d\breve*5/16 c4~ c b
}
bassNotesAnt = \relative c {
  e\breve*5/16 f2. g\breve*6/16~ s16 g4.~ g\breve*5/16 d\breve*7/16 g2
}