\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "36"
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
  The shep -- herds said to one an -- oth -- er:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Let us make our way to Beth -- le -- hem and see for our -- selves
  this thing which the Lord has re -- vealed to us.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak aes'8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ces[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2~ des2 s16 ees\breve*14/16
  des2 ces\breve*7/16 des4. ces4. aes4
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges2 f2 s16 ges\breve*14/16~
  ges2~ ges\breve*7/16~ ges4.~ ges4. f4
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des2~ des2 s16 ces\breve*14/16
  bes2 ces\breve*7/16 bes4. aes des4
}
