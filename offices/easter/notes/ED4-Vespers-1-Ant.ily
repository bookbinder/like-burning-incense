\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_139_1-12"
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
  The night will be
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  as clear as day, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 g8 c[ d] c b4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  s8 g'8~ 4.~ 4. s16 e\breve*8/16 d2
}
tenorNotesAnt = \relative g {
  c4~ 4. d s16 c\breve*8/16~ 4 b
}
bassNotesAnt = \relative c {
  e4 4. g~ s16 g\breve*8/16~ 2
}
