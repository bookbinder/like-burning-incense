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
  O ra -- diant child! 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  You brought heal -- ing to hu -- man life as you came forth from the womb of Ma -- ry,
  your moth -- er, like the bride -- groom from his mar -- riage cham -- ber.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak f[ bes]
  \allowBreak bes
  \allowBreak aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak f[ ges]
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak ges
  \allowBreak f[ ges ees]
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak des8
  \allowBreak des
  \allowBreak ees[ des ces]
  \allowBreak ces4
  \allowBreak ces8
  \allowBreak ees
  \allowBreak ges
  \allowBreak f
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16 s16 ees2. des2 ces\breve*7/16
  bes\breve*7/16 aes2. ces4.~ 2
  des4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*10/16 s16 ges2.~ 2~ \breve*7/16~
  ges f2. ges4.~ 2~
  4~ 4 f4
}
bassNotesAnt = \relative c {
  des\breve*10/16 s16 ces2. bes2 ees\breve*7/16
  des~ 2. ces4. ees2
  bes4 des2
}
