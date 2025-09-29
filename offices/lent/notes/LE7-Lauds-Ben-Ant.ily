\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "2"
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
  Je -- sus died
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to gath -- er in -- to one fam -- ily
  all the scat -- tered chil -- dren of God.
}
sopNotesAnt = \relative e' {
  g8 a c4( b)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak a
  \allowBreak a
  \allowBreak a[ b]
  \allowBreak a[ g]
  \allowBreak g4
  \allowBreak a
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak a
  \allowBreak g
  \allowBreak f
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative e' {
  g4~ \breve*5/16 s16 e\breve*7/16 d2 f\breve*5/16~ 4. d4
}
tenorNotesAnt = \relative g {
  c4 d\breve*5/16 s16 c\breve*7/16 b2 c\breve*5/16~ 4. b4
}
bassNotesAnt = \relative c {
  e4 g\breve*5/16~ s16 g\breve*7/16~ 2 f\breve*5/16 d4. g4
}
