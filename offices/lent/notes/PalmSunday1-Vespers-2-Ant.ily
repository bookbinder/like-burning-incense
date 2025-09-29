\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_115"
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
  The blood of Christ
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  wash -- es a -- way our sins and makes us
  wor -- thy to serve the liv -- ing God.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ f] ees aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 ees\breve*5/16 s16 des4. c\breve*5/16 des4.~
  4.~ 4 bes
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes~ s16 aes4.~ \breve*5/16~ 4.
  f4. aes4 g
}
bassNotesAnt = \relative c {
  aes'\breve*5/16 c, s16 des4. aes\breve*5/16 des4.~
  4.~ 4 ees4
}
