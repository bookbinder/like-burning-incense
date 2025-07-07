\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "24"
antKeysig = \key aes \major
psalmnum = "Phil_2_6-11"
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
  The ful -- ness of time
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has come u -- pon us at last;
  God sends his Son in -- to the world.
}
sopNotesAnt = \relative e' {
  r8 aes8 g aes f f([ ees] des4)
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees8
  \allowBreak ees([ f] ees4) \bar ","
  \allowBreak des4
  \allowBreak f8[ aes]
  \allowBreak bes
  \allowBreak aes4
  \allowBreak g8
  \allowBreak aes
  \allowBreak f
  \allowBreak f([ ees f ees] des4) \bar "||"
}
altoNotesAnt = \relative c' {
  ees4 des4. s2 s8 s16 c\breve*7/16 des4( c) des\breve*5/16
  ees\breve*5/16 des2.
}
tenorNotesAnt = \relative g {
  aes4~ aes4. bes4( f4.) s16
  ees\breve*7/16 aes2~ aes\breve*5/16~
  aes\breve*5/16~ aes2( f4)
}
bassNotesAnt = \relative c {
  c4 des4.~ des4~ des4. s16
  aes\breve*7/16~ aes2 bes\breve*5/16
  c\breve*5/16 des2.
}
