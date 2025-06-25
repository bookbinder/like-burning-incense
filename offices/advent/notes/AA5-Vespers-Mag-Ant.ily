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
  Bles -- sed are you a -- mong wo -- men
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and bles -- sed is the fruit of your womb.
}
sopNotesAnt = \relative e' {
  des8 ees ges ges4 ges8 aes[ bes] aes4 aes
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak f
  \allowBreak ees([-- f] ges4)
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*8/16~ des\breve*10/16~ s16 des\breve*5/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  ges\breve*8/16 f\breve*10/16 s16 ges\breve*5/16~ ges4~ ges4( f)
}
bassNotesAnt = \relative c {
  bes\breve*8/16 des\breve*10/16 s16 bes\breve*5/16 ces4 des2
}
