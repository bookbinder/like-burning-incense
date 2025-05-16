\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_149"
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
  I have fought the good fight;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have run the race to the fi -- nish; I have kept the faith.
}
sopNotesAnt = \relative e' {
  aes8 aes aes[ bes] aes ces[ bes aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak ees[ des]
  \allowBreak des4 \bar ","
  \allowBreak ces8
  \allowBreak ees
  \allowBreak ges
  \allowBreak f
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16 ees4. des2-"des in alto?" s16 ees4. des2
  bes2 ces2 aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges4. f2 s16 ges4.~ ges2~
  ges2~ ges f
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des4.~ des2 s16 ces4. bes2
  bes2 aes des
}
