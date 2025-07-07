\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_63_2-9"
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
  Lord, show us the Fa -- ther,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and we shall be sa -- tis -- fied, al -- le -- lu -- ia
}
sopNotesAnt = \relative e' {
  ees4 aes8 g aes f[ ees] ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*10/16 s16 des4. c\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*10/16~ s16 aes4.~ aes\breve*5/16~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*10/16 s16 des4. aes\breve*5/16 des4 ees2
}
