\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "31"
antKeysig = \key ges \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  To -- day the Bride -- groom
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  claims his bride, the Church, since Christ has washed
  her sins a -- way in Jor -- dan's wa -- ters; the Ma -- gi has -- ten
  with their gifts to the roy -- al wed -- ding; and the
  wed -- ding guests re -- joice, for Christ has changed wa -- ter in -- to
  wine, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar ","
  \allowBreak des8
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak f
  \allowBreak ges
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "|"
  \allowBreak r8
  \allowBreak aes'8
  \allowBreak aes[ bes aes]
  \allowBreak aes4
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes
  \allowBreak ces[ bes aes]
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges8([ aes] bes4)
  \allowBreak ces8
  \allowBreak bes4( aes) \bar ","
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak bes8
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 des2 s16 bes\breve*5/16 aes4.
  ces\breve*8/16 des\breve*5/16~ des2 f\breve*7/16
  ees\breve*11/16~ \breve*7/16 ges4
  des\breve*5/16~ \breve*5/16 bes4. ees2 des~ 4.
  bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 aes2 s16 ges\breve*5/16 f4.
  ges\breve*8/16~ \breve*5/16 f2 des'\breve*7/16
  ces\breve*11/16~ \breve*7/16 ges4~
  \breve*5/16 f\breve*5/16 ges4.~ 2~ 2 f4.
  ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*5/16~ 2~ s16 \breve*5/16~ 4.
  ees\breve*8/16 bes\breve*5/16 des2 s\breve*7/16
  s\breve*11/16 aes'\breve*7/16 ges4
  bes,\breve*5/16 bes\breve*5/16 ees4. ces2 bes2 des4.~
  4~ 2
}
