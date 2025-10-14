\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "32"
antKeysig = \key des \major
psalmnum = "Col_1_12-20"
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
  His glo -- ry cov -- ers the heav -- ens
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and his praise fills the earth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes f[ aes] aes bes4 aes8 bes des[ bes] bes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes8
  \allowBreak bes
  \allowBreak aes[ bes aes]
  \allowBreak f[ ees f]
  \allowBreak ees
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ \breve*10/16~ s16 \breve*7/16
  s\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges\breve*10/16 s16 f\breve*7/16
  ges\breve*5/16~ 4~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*5/16~ \breve*10/16~ s16 des\breve*7/16
  bes\breve*5/16 ges4 des'2
}
