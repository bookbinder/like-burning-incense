\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "48"
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
  Re -- joi -- cing you shall draw wa -- ter
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the well -- springs of the Sa -- vior.
}
sopNotesAnt = \relative e' {
  r8 aes8 g aes f f ees f[ ees] ees4
  \noBreak \hideNotes ees16 \unHideNotes
  ees8 des ees[ f ees] ees4 ees8 f des4 des \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16~ c2. s16 s\breve*7/16 bes4 aes
}
tenorNotesAnt = \relative g {
  ees\breve*7/16 aes2.~ s16 aes\breve*7/16 f2
}
bassNotesAnt = \relative c {
  aes\breve*7/16~ aes2. s16 c\breve*7/16 des2
}
