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
  I am co -- ming soon, says the Lord;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I will give to e -- very -- one the re -- ward his deeds
  de -- serve.
}
sopNotesAnt = \relative e' {
  g8 a a [ b] a b4 b8 a a4( g)
  \noBreak \hideNotes g16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak fis[ g]
  \allowBreak fis
  \allowBreak e
  \allowBreak d
  \allowBreak d4
  \allowBreak d8
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak a[ b c b]
  \allowBreak a
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
  d4 e4. g2 d2~ s16 d4 c4. b2.~ b4. e\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  b4 c4. d2 b2 s16 g4~ g4.~ g2.~ g4.~ g\breve*5/16~ g2
}
bassNotesAnt = \relative c {
  g'4~ g4.~ g2 b2 s16 b,4 c4. g2. e'4. a,\breve*5/16 g2
}