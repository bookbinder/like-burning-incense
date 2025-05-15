\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_149"
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
  Bles -- sed are you, Ma -- ry,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be -- cause you be -- lieved that the Lord's words to you would
  be ful -- filled. "[E.T. Al" -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  c'8 b c a4 b8[ a g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak f[ e]
  \allowBreak d
  \allowBreak e
  \allowBreak f[ e]
  \allowBreak d[ a']
  \allowBreak g
  \allowBreak a4
  \allowBreak a8
  \allowBreak b
  \allowBreak a
  \allowBreak a4( g) \bar "||"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  g'4. f4 d2. s16 e2 d\breve*6/16~ d4. f\breve*5/16 d2~ d8 e4 d2
}
tenorNotesAnt = \relative g {
  c4.~ c4~ c4. b4. s16 c2~ c\breve*6/16~ c4.~ c\breve*5/16~ c4( b)~
  b8 c4~ c b
}
bassNotesAnt = \relative c {
  e4. f4 g2. s16 c,2 d\breve*6/16 f4.~ f\breve*5/16 g2~ g8~ g4~ g2
}
