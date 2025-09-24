\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "68"
antKeysig = \key g \major
psalmnum = "Rev_19_1-7"
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
  All were filled with the Ho -- ly Spir -- it,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and they be -- gan to speak, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  g4 a8 b[ d] b b a g a[ b a] a4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak a8
  \allowBreak g
  \allowBreak a
  \allowBreak b
  \allowBreak a
  \allowBreak g4 \bar "'"
  \allowBreak a8
  \allowBreak a[ b]
  \allowBreak g4
  \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
  d\breve*9/16 e\breve*8/16 s16 d4~ 4. e4 c b
}
tenorNotesAnt = \relative g {
  b\breve*9/16 g\breve*8/16~ s16 g4~ 4.~ 4~ 2
}
bassNotesAnt = \relative c' {
  g\breve*9/16
  \shape #'((0 . 0) (0 . 0) (-3 . 0) (-3 . 0)) ~
  << { \hideNotes \once \override NoteColumn.force-hshift = 1
       g\breve*8/16 \unHideNotes }
     \new Voice { \voiceTwo c,\breve*8/16 } >>
  s16 g4 b4. c4 g2
}
