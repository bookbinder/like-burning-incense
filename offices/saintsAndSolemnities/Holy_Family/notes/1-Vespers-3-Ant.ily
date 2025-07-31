\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
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
  Je -- sus grew in wis -- dom with the years
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and was plea -- sing to God and men.
}
sopNotesAnt = \relative e' {
  aes4 aes8 g aes f[ c'] c c c bes4
  \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak g([ aes] g4)
  \allowBreak ees8
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16~ c\breve*5/16 f2 s16 ees4.~
  ees\breve*5/16 c2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes~ aes2~ s16 aes4.
  bes\breve*5/16 aes2
}
bassNotesAnt = \relative c {
  f\breve*5/16 ees des2 s16 c4.~
  c\breve*5/16 f2
}
