\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "29"
antKeysig = \key f \minor
psalmnum = "Benedictus"
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
  The man who cured me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  told me to pick up my sleep -- ing mat and go in peace.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees4 f8 g[ aes f] f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees([ f] g4)
  \allowBreak f8
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak f([ ees] des4)
  \allowBreak ees8
  \allowBreak des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s s16 s4. s2. s
  c4( aes4.) g2
}
tenorNotesAnt = \relative g {
  g\breve*5/16 aes s16 bes4. g4( bes2)~ 2.
  g4( f4.) ees2
}
bassNotesAnt = \relative c {
  ees\breve*5/16~ ees~ s16 ees4.~ 2. des2.
  c4~ 4.~ 2
}
