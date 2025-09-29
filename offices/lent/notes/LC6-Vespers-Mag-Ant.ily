\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "50"
antKeysig = \key f \minor
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
  It is far more im -- por -- tant
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to love your neigh -- bor as your -- self than to
  of -- fer sac -- ri -- fice.
}
sopNotesAnt = \relative e' {
  f8 ees f([-- g] aes4) g8 aes bes[ aes g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak g([ aes] g4) \bar "'"
  \allowBreak f8
  \allowBreak g
  \allowBreak aes
  \allowBreak g
  \allowBreak g f f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*8/16 ees2.~ s16 ees4.~ 2~ 2.
  des4 c2
}
tenorNotesAnt = \relative g {
  aes\breve*8/16 g2. s16 bes4. c2 bes2.~
  bes4 aes2
}
bassNotesAnt = \relative c {
  f\breve*8/16 ees2.~ s16 ees4.~ 2~ 2.
  f4~ f2
}
