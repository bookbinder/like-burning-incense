\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key a \minor
psalmnum = "Dan_3_57-88,_56"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  In the spi -- rit and pow -- er of E -- li -- jah,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will go be -- fore the Lord to pre -- pare a peo -- ple
  wor -- thy of him.
}
sopNotesAnt = \relative e' {
  g8 g b c a b a a a g4 g
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak g
  \allowBreak a([ g] f4)
  \allowBreak f8
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g4
  \allowBreak g8
  \allowBreak f
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  g'4^"Different psalm tone. Does it work?" e\breve*7/16 d2. s16 s\breve*5/16
  s2 f4 e4. f4. d2 c4
}
tenorNotesAnt = \relative g {
  c4~ c\breve*7/16 b2. s16 c\breve*5/16~
  c4( a) c4~ c4. a4.~ a2~ a4
}
bassNotesAnt = \relative c {
  e4 a\breve*7/16 b2. s16 e,\breve*5/16
  f2. c4. d4.~ d2 a4
}
