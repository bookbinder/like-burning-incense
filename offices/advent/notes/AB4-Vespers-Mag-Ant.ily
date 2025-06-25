\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "40"
antKeysig = \key ges \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  Zi -- on,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will be re -- newed, and you will see the Just One who is co -- ming
  to you.
}
sopNotesAnt = \relative e' {
  ges8[ aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak ges
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak ees
  \allowBreak aes
  \allowBreak ges
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak ees4( des8)
  \allowBreak \breathe
  \allowBreak ces8
  \allowBreak des
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak ges
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  des4~ des4.~ s16
  des2~ des4. ees2 r4 bes\breve*5/16
  ces2 bes4
}
tenorNotesAnt = \relative g {
  ges4 f4. s16
  ges2 f4. ges2.~ ges\breve*5/16~ ges2~ ges4
}
bassNotesAnt = \relative c {
  bes4 des4.~ s16
  des2~ des4. ces2. ges\breve*5/16
  aes2 ees'4
}
