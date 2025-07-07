\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key g \major 
antiphon = "3"
psalmtone = "68"
psalmtonestruct = "special"
psalmnum = "Rev_19_1-7"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Let us live in ho -- li -- ness and 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  love as we pa -- tient -- ly
  a -- wait our bles -- sed hope, the co -- ming of our Sa -- vior.
}
sopNotesAnt = \relative e' {
  g8 g g[ a] g fis g fis e d4
  \noBreak \hideNotes a16 \unHideNotes   %so that I can align the * better
  \allowBreak d8
  \allowBreak d
  \allowBreak e8[ g]
  \allowBreak g
  \allowBreak e
  \allowBreak g
  \allowBreak a4
  \allowBreak b8
  \allowBreak d8[ c]
  \allowBreak b
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak a4
  g4 \bar "||"
}
altoNotesAnt = \relative c' {
  d\breve*5/16 c2 b2 s16 d\breve*5/16~ d4. e4.~ e4. d2~ d2 
}
tenorNotesAnt = \relative g {
  g\breve*5/16~ g2~ g2~ s16 g\breve*5/16 fis4. g4. c4.~ c2 b2
}
bassNotesAnt = \relative c {
  b\breve*5/16 c2 g2 s16 b\breve*5/16 d4. c4.~ c4. g2~ g2
}