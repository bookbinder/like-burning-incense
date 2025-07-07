\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "69"
antKeysig = \key a \minor
psalmnum = "Ps_147_12-20"
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
  The Lord has clothed me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with gar -- ments of sal -- va -- tion; he has
  co -- vered me with a robe of jus -- tice.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ f] d g[ a g] g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak g
  \allowBreak a4
  \allowBreak g8
  \allowBreak f[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone. Does it work?" s4. s2. s16 f\breve*5/16 e2.
  d\breve*5/16~ d4.~ d4 c4
}
tenorNotesAnt = \relative g {
  g4 a4. c2. s16 a\breve*5/16 c2.
  a\breve*5/16 f4. a2
}
bassNotesAnt = \relative c {
  c4 f4. e2. s16 f\breve*5/16 c2.
  f\breve*5/16 d4. a2
}
