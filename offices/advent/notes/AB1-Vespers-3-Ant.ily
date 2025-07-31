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
  The Lord our king and law -- gi -- ver
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come to save us.
}
sopNotesAnt = \relative e' {
  r8^"different alleluias from ordinary time? p. 16 in Seasonal pdf"
  g8 g[ a] b a4 g8 b4 b8[ a] a4 
  \noBreak \hideNotes a16 \unHideNotes   %so that I can align the * better
  \allowBreak a8
  \allowBreak b[ d]
  \allowBreak b
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  d\breve*5/16 e4. d4~ d\breve*5/16~ s16 d4.~ d2
}
tenorNotesAnt = \relative g {
  g\breve*5/16~ g4.~ g4 fis\breve*5/16 s16 g4. c4 b
}
bassNotesAnt = \relative c {
  b\breve*5/16 c4. d4~ d\breve*5/16 s16 g4.~ g2
}