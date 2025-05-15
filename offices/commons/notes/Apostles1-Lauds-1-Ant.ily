\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "7"
antKeysig = \key c \major
psalmnum = "Ps_63_2-9"
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
  My com -- mand -- ment is this:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Love one a -- no -- ther as I have loved you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c'4 b8 a b a g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g4
  \allowBreak e8[ g]
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4
  \allowBreak d8
  \allowBreak a'4
  \allowBreak a8
  \allowBreak f[ g]
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  g \bar "||"
}
altoNotesAnt = \relative c' {
  g'4. f4. e\breve*13/16 s16 f4.~ f4 d4. e4 d2
}
tenorNotesAnt = \relative g {
  c4.~ c4.~ c\breve*7/16~ s16 c2.~ c4.~ c4 b4. c4~ c b
}
bassNotesAnt = \relative c {
  e4. f4. c\breve*7/16 s16 d2. f4. a4 g4.~ g4~ g2
}
