\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "83"
antKeysig = \key aes \major
psalmnum = "Ps_100"
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
  Ea -- ger -- ly I watch for the Lord;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I wait in joy -- ful hope for the com -- ing of God my Sav -- ior.
}
sopNotesAnt = \relative e' {
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f4( ees)
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2 c\breve*10/16 s16 c2
  des4. \parenthesize aes4. bes4 aes4
}
tenorNotesAnt = \relative g {
  f\breve*5/16 bes4 aes4~ aes\breve*5/16~ s16 aes4.~ aes2.~
  aes2. f2
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des2 aes\breve*5/16 s16 c4. f2.
  bes,4. c4. des2
}
