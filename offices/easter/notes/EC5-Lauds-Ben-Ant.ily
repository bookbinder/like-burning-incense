\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "7"
antKeysig = \key c \major
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
  A -- men, A -- men, I say to you:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Who -- e -- ver be -- lieves in me will live for e -- ver,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 g[ a] g f[ g] g c[ b] a a4 \bar ","
  \noBreak \hideNotes a16 \unHideNotes
  \allowBreak a8
  \allowBreak g4
  \allowBreak g8
  \allowBreak e
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak d4
  \allowBreak e8
  \allowBreak f[ a]
  \allowBreak a
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 f4.~ f2. s16 s2 s2. f4. d4~ d4. e4 d2
}
tenorNotesAnt = \relative g {
  c\breve*5/16~ c4. a4. c4.~ s16 c2~ c2.~ c4.~ c4 b4. c4~ c b
}
bassNotesAnt = \relative c {
  e\breve*5/16 d4. f2. s16 e2 d4. f4.~ f4. g4~ g4.~ g4~ g2
}
