\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  I am as -- cen -- ding
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to my Fa -- ther and your Fa -- ther, to my God and your
  God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 ees8 des f[ ges aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ bes]
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak f[ ges]
  \allowBreak aes4
  \allowBreak aes \bar "'"
  \allowBreak aes8
  \allowBreak ges[ f ees]
  \allowBreak ees4
  \allowBreak f8
  \allowBreak ges[ f ees]
  \allowBreak ees4 \bar "'"
  \allowBreak des8[ ees]
  \allowBreak f[ ees]
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16 s16 ges4 des2 f4 ees4 des4. bes\breve*6/16
  ees\breve*5/16 aes,1
}
tenorNotesAnt = \relative g {
  f\breve*10/16 s16 bes4 ges2 aes4 ges4 f4. ges\breve*6/16~
  ges\breve*5/16~ ges2 f2
}
bassNotesAnt = \relative c {
  des\breve*10/16~ s16 des4~ des2.~ des4~ des4. ees\breve*6/16
  ces\breve*5/16 des1
}
