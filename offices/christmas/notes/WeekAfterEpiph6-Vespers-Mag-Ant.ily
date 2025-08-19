\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
antKeysig = \key ges \major
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
  An an -- gel warned the wise men in a dream
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to re -- turn to their own coun -- try by a dif -- ferent route.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak des8
  \allowBreak ges[ f]
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes[ des]
  \allowBreak des4
  \allowBreak ces8
  \allowBreak bes
  \allowBreak bes4( aes)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4
  \allowBreak des8
  \allowBreak des
  \allowBreak ees([ f] ees4)
  \allowBreak ees8
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ 4.~ 2. ees2. s16 ces\breve*5/16
  s2. bes\breve*5/16 aes4
}
tenorNotesAnt = \relative g {
  ges\breve*5/16 f4. ges2.~ 2.~ s16 ges\breve*5/16
  aes2. ges\breve*5/16 f4
}
bassNotesAnt = \relative c {
  bes\breve*5/16 des4. ges4 bes,2 ces2. s16 ees\breve*5/16
  f2. ges\breve*5/16 des4
}
