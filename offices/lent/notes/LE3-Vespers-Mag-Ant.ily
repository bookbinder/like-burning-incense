\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
antKeysig = \key ges \major
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
  The One who sent me is with me;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he has not left me a -- lone, be -- cause I
  al -- ways do what pleas -- es him.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ ees] des des[ aes'] aes ges ges[ f] f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak f
  \allowBreak ges
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak aes
  \allowBreak des,4 \bar ","
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees[-- f ges f]
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 des2~ 4~ 4.~ s16 des4 ees2 r2.
  ces2.~ \breve*5/16 aes4
}
tenorNotesAnt = \relative g {
  f\breve*5/16~ 2 bes4 aes4.~ s16 aes4 ges2 f4.
  bes4. ges2.~ \breve*5/16 f4
}
bassNotesAnt = \relative c {
  des\breve*5/16~ 2~ 4~ 4.~ s16 des4~ 2~ 4.
  << {\hideNotes \once \override NoteColumn.force-hshift = -1 ees4.
      \shape #'((1 . 1) (1 . 1) (0 . 1) (0 . 1)) ~
      ~ \unHideNotes }
     \new Voice { ges4. } >>
  ees2. ces\breve*5/16 des4
}
