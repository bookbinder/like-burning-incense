\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
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
    A cer -- tain man held a ban -- quet 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and in -- vi -- ted ma -- ny; when it was time for the ban -- quet
    to be -- gin, he sent his ser -- vant to call his guests, for now
    the feast was rea -- dy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ f] d f4 g8 a \bar "" b[ a g] g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "|"
  \allowBreak r4
  \allowBreak g8
  \allowBreak b
  \allowBreak c
  \allowBreak d4
  \allowBreak c8
  \allowBreak a
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak c
  \allowBreak c
  \allowBreak b4 \bar "'"
  \allowBreak a8
  \allowBreak g[ a]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d[ a']
  \allowBreak g
  \allowBreak a4
  \allowBreak a \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  \parenthesize c4 d\breve*7/16~ d4.~ d2~ s16 d4.~ d2
  s4 s8 g4 e2 g\breve*5/16~ g4. e2. s4. s4 s8 s4. s4. g4 f4. e4 d2
}
tenorNotesAnt = \relative g {
  c4 a\breve*7/16 g4. b2 s16 a4. c4 b4~ b4. d4 c2~ c\breve*5/16 d4.
  c2. d4.~ d4. c2.~ c4~ c4.~ c4~ c4 b4
}
bassNotesAnt = \relative c {
  e4 d\breve*7/16 g4.~ g2~ s16 g4.~ g2~ g2 s8 a2 e\breve*5/16 g4. c2.
  b4.~ b4. a4. f d4~ d4. f4 g2
}
