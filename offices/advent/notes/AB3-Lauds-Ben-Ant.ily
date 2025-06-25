\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "69"
antKeysig = \key a \minor
psalmnum = "Benedictus"
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
  Re -- joice and be glad,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  O daugh -- ter of Zi -- on; I will come and make my
  dwel -- ling in you, says the Lord.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ f] e d g([ a] g4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak c
  \allowBreak b[ a g]
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak a[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak g
  \allowBreak a4
  \allowBreak a8
  \allowBreak a
  \allowBreak g[-- a]
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak f
  \allowBreak f4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s\breve*5/16 s16 a'2 d,4.~ d2~ d4.~ d4~ d2 c4 d c2
}
tenorNotesAnt = \relative g {
  c2.~ c\breve*5/16~ s16 c2~ c4. b2 a4.~ a4 f2~ f4 a4~ a2  
}
bassNotesAnt = \relative c {
  c2. e\breve*5/16 s16 f2 g4.~ g2 f4.~ f4 d2 f2 a,2
}
