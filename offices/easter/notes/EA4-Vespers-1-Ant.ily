\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_27_1-6"
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
  With his right hand
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  God has raised him up as king and sav -- ior,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ees f[ aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes8[ c]
  \allowBreak bes
  \allowBreak aes[ c]
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes[ aes f]
  \allowBreak ees
  \allowBreak g4
  \allowBreak f \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c2. s16 f4. ees\breve*9/16 des\breve*5/16
  ees4 c2
}
tenorNotesAnt = \relative g {
  aes2.~ s16 aes4.~ \breve*9/16 bes\breve*5/16~
  4~ 4 aes
}
bassNotesAnt = \relative c {
  f2. s16 des4. c\breve*9/16 bes\breve*5/16
  c4 f2
}
