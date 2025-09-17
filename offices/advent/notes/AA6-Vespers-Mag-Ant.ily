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
  Out of E -- gypt I have called my Son;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will come to save his peo -- ple.
}
sopNotesAnt = \relative e' {
  des8 ees ges4 f8 ees ges aes[ bes] aes aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak f[ ges]
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ des\breve*7/16 s16 ces2. aes2
}
tenorNotesAnt = \relative g {
  ges\breve*7/16 f s16 ges2.~ ges4 f
}
bassNotesAnt = \relative c {
  bes\breve*7/16 des s16 ees4. ces des2
}
