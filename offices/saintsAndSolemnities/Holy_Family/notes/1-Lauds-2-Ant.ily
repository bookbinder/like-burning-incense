\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
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
  The child grew
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in wis -- dom and strength, and the fa -- vor of God was u -- pon him.
}
sopNotesAnt = \relative e' {
  r8 aes8 g[ aes] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak ees8
  \allowBreak f8[ c']
  \allowBreak c
  \allowBreak c
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak g4
  \allowBreak g8
  \allowBreak ees
  \allowBreak f4 f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16~ s16 c2 f ees4.~ ees2 c
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ s16 aes2~ aes~ aes4. bes2~ bes4 aes
}
bassNotesAnt = \relative c {
  f\breve*7/16 s16 ees2 des c4.~ c2 f
}
