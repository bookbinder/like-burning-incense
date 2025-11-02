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
  To -- geth -- er they per -- se -- vered in prayer
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with Ma -- ry, the moth -- er of Je -- sus, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 aes8 g f f g f ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak des[ ees f]
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f4
  \allowBreak f8
  \allowBreak g
  \allowBreak ees4
  \allowBreak ees \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*10/16~ 4. s16 des\breve*10/16
  s\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*10/16 aes4.~ s16 aes\breve*10/16~
  \breve*5/16~ 4~ 4 g
}
bassNotesAnt = \relative c {
  aes\breve*10/16~ 4. s16 bes\breve*10/16
  c\breve*5/16 des4 ees2
}
