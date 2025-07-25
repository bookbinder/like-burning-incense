\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Isa_12_1-6"
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
  Re -- joi -- cing, you will draw wa -- ter
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the well -- springs of the Sa -- vior, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 f ees ees c des ees[ aes] aes4
  \noBreak \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f4
  \allowBreak f8
  \allowBreak g
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 r4 ees2. s16 des2.
  bes\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ aes2.~ s16 aes2.
  g\breve*5/16 aes4~ aes g
}
bassNotesAnt = \relative c {
  aes'\breve*7/16 c,2. s16 des2.
  ees\breve*5/16~ ees4~ ees2
}
