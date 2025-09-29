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
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  It is writ -- ten:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I will strike the shep -- herd and his flock shall be
  scat -- tered. But when I have ri -- sen, I will go be -- fore
  you in -- to Ga -- li -- lee. There you shall see me, says the Lord.
}
sopNotesAnt = \relative e' {
  des8 des f[ ges aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes8
  \allowBreak des
  \allowBreak aes
  \allowBreak bes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ges[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak ges
  \allowBreak bes[ des]
  \allowBreak des
  \allowBreak des4
  \allowBreak ces8
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes4 \bar ","
  \allowBreak aes4
  \allowBreak f8
  \allowBreak ges
  \allowBreak ees[-- des ces]
  \allowBreak ces4
  \allowBreak \breathe
  \allowBreak ees8
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ s16 des2~ 2. ees4
  des4 aes2 des2. ees des\breve*8/16~
  2 ees ces\breve*5/16 bes4 aes
}
tenorNotesAnt = \relative g {
  f\breve*7/16 s16 ges2 f2. ges4~
  4~ 4 f bes2. ces bes\breve*8/16
  f2 ges2~ \breve*5/16~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ s16 des2~ 2. ces4
  bes4 des2 ges2.~ 2.~ \breve*8/16
  des2 ces aes\breve*5/16 ces4 des
}
