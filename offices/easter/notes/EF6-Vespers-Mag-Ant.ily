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
  To those who ask him,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Fa -- ther will send the Ho -- ly Spir -- it, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees ees[ aes] aes g[ ees] ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s4 s4. s16 s\breve*7/16 s\breve*5/16
  c4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes4 g4. s16 aes\breve*7/16 g\breve*5/16
  aes4~ 4 g
}
bassNotesAnt = \relative c {
  c\breve*5/16 ees4~ 4. s16 des\breve*7/16 ees\breve*5/16~
  4~ 2
}
