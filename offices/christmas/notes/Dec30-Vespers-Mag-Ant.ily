\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "2"
antKeysig = \key c \major
psalmnum = "Magnificat"
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
  We sing your prais -- es,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  ho -- ly Moth -- er of God: you gave birth to our Sav -- ior, Je -- sus Christ;
  watch o -- ver all who hon -- or you.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak g8
  \allowBreak b[ c]
  \allowBreak a
  \allowBreak a[ g]
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e4
  \allowBreak f8
  \allowBreak g
  \allowBreak a
  \allowBreak a
  \allowBreak g4 \bar "|"
  \allowBreak r8
  \allowBreak g8
  \allowBreak g
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g
  \allowBreak f[ e d]
  \allowBreak d4
  \allowBreak d8[ a']
  \allowBreak g
  \allowBreak c([ b a] g4) \bar ","
  \allowBreak a
  \allowBreak a8
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak a
  \allowBreak g[ a]
  \allowBreak g
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*5/16~ e\breve*7/16 s16 f4. d4 c\breve*7/16
  d4. s\breve*5/16 g\breve*5/16 f\breve*7/16 d4.~ d4
}
tenorNotesAnt = \relative g {
  g\breve*5/16 c\breve*7/16~ s16 c4.
  << { \hideNotes g4
       \shape #'((-1 . 0) (-1 . 0) (0 . 0) (0 . 0)) ~
       \unHideNotes }
     \new Voice { \voiceOne b4 }
   >>
   g\breve*7/16
  a4.~ a\breve*5/16 c~ c\breve*7/16~ c4. b4
}
bassNotesAnt = \relative c {
  c\breve*5/16~ c\breve*7/16 s16 f4. g4 e\breve*7/16
  d4. f\breve*5/16 e d\breve*7/16 g4.~ g4
}
