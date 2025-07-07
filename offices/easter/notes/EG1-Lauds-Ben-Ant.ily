\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "50"
antKeysig = \key f \minor
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
  Fa -- ther,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have glo -- ri -- fied you u -- pon earth, I have ac -- com -- plished
  the work you gave me to do, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8([ ees] f[ ees c]) c4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f[ aes]
  \allowBreak g
  \allowBreak f[ aes]
  \allowBreak bes
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak c
  \allowBreak des
  \allowBreak c
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak g
  \allowBreak ees
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16~ s16 c\breve*9/16 f\breve*11/16
  ees2 des4. ees4 c2
}
tenorNotesAnt = \relative g {
  aes\breve*9/16~ s16 aes\breve*9/16~ aes\breve*11/16~
  aes2~ aes4. g4 bes aes
}
bassNotesAnt = \relative c {
  f\breve*9/16 s16 ees\breve*9/16 des\breve*11/16
  c2 bes4. c4 f2
}
