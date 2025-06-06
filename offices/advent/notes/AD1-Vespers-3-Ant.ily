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
  E -- ver wi -- der 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will his king -- dom spread,
  e -- ter -- nal -- ly at peace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 g e[ d] d4
  \hideNotes a16 \unHideNotes   %so that I can align the * better
  \allowBreak d8
  \allowBreak d
  \allowBreak e[ g]
  \allowBreak g
  \allowBreak a4 \bar ","
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak a4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||" \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*8/16 s16 d4.~ d4. e\breve*7/16~ e4 d2
}
tenorNotesAnt = \relative g {
  d\breve*8/16 s16 g4. fis4. g\breve*7/16 c4~ c4 b
}
bassNotesAnt = \relative c {
  g\breve*8/16 s16 b4. d4. c\breve*7/16~ c4 g'2
}