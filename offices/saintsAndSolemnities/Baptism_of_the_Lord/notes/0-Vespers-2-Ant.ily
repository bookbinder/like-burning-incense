\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_135_13-21"
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
  I bap -- tize you with wa -- ter,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  but the one who is com -- ing will bap -- tize with the Ho -- ly
  Spir -- it and with fire.
}
sopNotesAnt = \relative e' {
  \allowBreak aes4
  \allowBreak f8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes[ des,]
  \allowBreak des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak des
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees[ des ces]
  \allowBreak ces4
  \allowBreak ces8
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4
  \allowBreak ces8
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des4. ees2 aes,2. s16 ces\breve*11/16
  des2~ 4. aes2 ces4 aes4
}
tenorNotesAnt = \relative g {
  f4. ges2 f2. s16 ges\breve*11/16~
  2~ 4. f2 ees4 f
}
bassNotesAnt = \relative c {
  des4.~ 2~ 2. s16 ces\breve*11/16
  bes2 des4.~ 2.~ 4
}
