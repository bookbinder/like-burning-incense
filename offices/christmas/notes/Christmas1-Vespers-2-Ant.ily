\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_130"
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
  With the Lord is un -- fai -- ling love;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  great is his power to save us.
}
sopNotesAnt = \relative e' {
  ees8 f aes4 aes8 aes bes c bes4
  \noBreak \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak ees
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*8/16~ ees4 s16 des2. c2
}
tenorNotesAnt = \relative g {
  aes\breve*8/16 g4 s16 aes2 bes4~ bes aes
}
bassNotesAnt = \relative c {
  c\breve*8/16 ees4 s16 f2.~ f2
}
