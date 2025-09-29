\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "50"
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
  Fa -- ther, right -- eous One,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the world does not know you, but I know you,
  be -- cause you are the One who sent me.
}
sopNotesAnt = \relative e' {
  f8([ aes bes] aes4) aes8 ees[ g] g f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees([ f] g4)
  \allowBreak g8
  \allowBreak aes[ g]
  \allowBreak g[ f]
  \allowBreak f4 \bar ","
  \allowBreak ees8
  \allowBreak f[ c']
  \allowBreak c[-- bes]
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak bes[ c]
  \allowBreak aes4
  \allowBreak f8
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak bes[-- aes f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2.~ 4.~ 4. s16 ees4~ 4. des4~ \breve*5/16
  c4 des\breve*5/16 ees2. f4. des c4
}
tenorNotesAnt = \relative g {
  f2. g4. aes4. s16 bes4~ 4.~ 4 aes\breve*5/16
  f4~ \breve*5/16 aes2.~ 4.~ 4.~ 4
}
bassNotesAnt = \relative c {
  aes2. c4. f s16 g4 ees4. bes4 des\breve*5/16
  aes4 bes\breve*5/16 c2. des4. f4.~ 4
}
