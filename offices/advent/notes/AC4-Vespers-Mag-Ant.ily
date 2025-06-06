\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "37"
antKeysig = \key ges \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  You, O Lord, 
  we long for you to come and set your peo -- ple free.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  are the One whose co -- ming was fore -- told;
}
sopNotesAnt = \relative e' {
  aes8[ f] bes aes4 aes8 aes ges[ aes] ges8 f ges ees f ees4( des)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak des8
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak f
  \allowBreak ges
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16 s16 bes4. ces2 aes\breve*5/16 ces\breve*5/16
  ees4. des2 aes4
}
tenorNotesAnt = \relative g {
  f\breve*7/16 s16 ges4.~ ges2 f\breve*5/16 ges\breve*5/16~ ges4.~ ges2 f4
}
bassNotesAnt = \relative c {
  des\breve*7/16 s16 ees4. ces2 des\breve*5/16 ees\breve*5/16
}
