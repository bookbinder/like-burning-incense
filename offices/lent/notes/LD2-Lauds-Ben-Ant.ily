\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "32"
antKeysig = \key des \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  A roy -- al of -- fi -- cial,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  hear -- ing that Je -- sus had come to Ga -- li -- lee, begged
  him to heal his son who lay ill in
  Ca -- per -- naum.
}
sopNotesAnt = \relative e' {
  r8 des8 f ees des ees4 ees
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ges
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8([-- bes] c[ bes aes])
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4( ges)
  \allowBreak ges8
  \allowBreak ees[ ges]
  \allowBreak ges([ f] ees4)
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  aes\breve*5/16^"Different psalm tone. Does it work?" bes\breve*14/16 s16 des2
  ees\breve*8/16 c4. des\breve*7/16 bes2. aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges\breve*14/16 s16 f2
  aes\breve*8/16 ees4. ges\breve*7/16~ 2. f2
}
bassNotesAnt = \relative c {
  des\breve*5/16~ \breve*14/16~ s16 des2
  c\breve*8/16 aes4. bes\breve*7/16 ges2. des'2
}
