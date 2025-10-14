\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "29"
antKeysig = \key f \minor
psalmnum = "Eph_1_3-10"
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
  God has blessed us in Christ.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Through him, at the cost of his blood,, we have
  been re -- deemed.
}
sopNotesAnt = \relative e' {
  ees4 f8 aes4 f8 aes g4 
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8[ aes]
  \allowBreak f4
  \allowBreak f8
  \allowBreak f
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees
  \allowBreak des
  \allowBreak des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*7/16~ ees2 s16 des2~ 2 c4 bes2 aes
}
tenorNotesAnt = \relative g {
  aes\breve*7/16 bes2~ s16 bes2 aes2~ 4 f2~ 2
}
bassNotesAnt = \relative c {
  c\breve*7/16 ees2 s16 bes2 des aes4 des2 f,
}
