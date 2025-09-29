\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "34"
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
  In -- deed you know me, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and you know where I come from. Yet I have not come
  of my own ac -- cord; it was my Fa -- ther who sent me.
}
sopNotesAnt = \relative e' {
  r8 des8 f[ ges] aes bes4 aes8 ges8[ bes] bes aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak c[ des]
  \allowBreak bes
  \allowBreak c
  \allowBreak bes[ aes]
  \allowBreak aes4
  \allowBreak r4 \bar "|"
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak f[ ees]
  \allowBreak ees([ f] ges4)
  \allowBreak ees8
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees4 \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f
  \allowBreak des4
  \allowBreak des8
  \allowBreak bes
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ 4.~ 2. f2 s16 des2~ 2.
  f4. des2~ \breve*8/16 ees\breve*5/16 bes2
  aes2
}
tenorNotesAnt = \relative g {
  f4~ 4. ges2. aes2 s16 ges2 f2.
  aes4. bes4 aes ges\breve*8/16 aes\breve*5/16 ges2~
  4 f
}
bassNotesAnt = \relative c {
  des4~ 4.~ 2.~ 2~ s16 des2~ 2.~
  4.~ 2 bes\breve*8/16 c\breve*5/16 des2~ 2
}
