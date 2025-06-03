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
master-from-pitch = des
master-to-pitch = c


text = \lyricmode {
  \set includeGraceNotes = ##t
  The One who is co -- ming af -- ter me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is grea -- ter than I; I am not wor -- thy to un -- tie
  the strap of his san -- dals.
}
sopNotesAnt = \relative e' {
  r8 des8 f4 f8 f ees f des f aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak des4
  \allowBreak c8
  \allowBreak bes
  \allowBreak aes4 \bar ","
  \allowBreak ges4
  \allowBreak aes8
  \allowBreak bes8
  \allowBreak aes
  \allowBreak des,
  \allowBreak des
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  aes\breve*12/16 s16 ees'4 des2~ des4~ des2~
  des2~ des\breve*7/16 aes2
}
tenorNotesAnt = \relative g {
  f\breve*12/16 s16 aes4 f2 aes4 bes2
  f2 ges\breve*7/16~ ges4 f
}
bassNotesAnt = \relative c {
  des\breve*12/16 s16 c4 bes2 f4 ges2
  aes2 bes\breve*7/16 des2
}
