\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "7"
antKeysig = \key c \major
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
  Wor -- ship the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who made the hea -- vens and the earth, springs of wa -- ter and the
  migh -- ty sea, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g8 a g c4
  \noBreak \hideNotes c16 \unHideNotes
  \allowBreak c8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak a
  \allowBreak a4( g) \bar "'"
  \allowBreak g8[ a]
  \allowBreak g
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak e
  \allowBreak f[ e]
  \allowBreak d8
  \allowBreak d4( a') \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  g'\breve*9/16 s16 f2 e\breve*7/16 d\breve*7/16~ d\breve*5/16 f4 d2
}
tenorNotesAnt = \relative g {
  c\breve*9/16~ s16 c2~ c\breve*7/16~ c\breve*7/16~ c\breve*5/16~ c4~ c b
}
bassNotesAnt = \relative c {
  e\breve*9/16 s16 f2 c\breve*7/16 d\breve*7/16 f\breve*5/16~ f4 g2
}
