\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
antKeysig = \key aes \major
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
  The peo -- ple of Sa -- ba shall come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  bring -- ing gold, frank -- in -- cense and myrrh, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak ees8
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f4( ees8)
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak des
  \allowBreak des([ f] aes4)
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak aes
  \allowBreak f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*12/16~ s16 c4. bes2 des2~ 4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*12/16 s16 aes4. f2~ aes2~ 4~ 4 g
}
bassNotesAnt = \relative c {
  aes\breve*12/16~ s16 aes4.
  << {\hideNotes \tieUp f'2
      \shape #'((3 . 0) (2 . 0) (-1 . 0) (-1 . 0)) ~
      \tieDown \unHideNotes }
     \new Voice {\voiceTwo des2 } >>
  f bes,4 ees2
}
