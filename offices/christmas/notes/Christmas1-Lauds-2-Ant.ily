\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Dan_3_57-88,_56"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  The an -- gel said to the shep -- herds:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I pro -- claim to you a great joy; to -- day the Sa -- vior
  of the world is born for you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes bes4 ges8 aes aes([ bes] ces[ bes aes]) aes4 
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak ges8
  \allowBreak aes
  \allowBreak ces[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges[ bes]
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak f
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak f
  \allowBreak ees([ f] ges4)
  \allowBreak ees8
  \allowBreak f[ ges]
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ des\breve*7/16 ees\breve*7/16 s16 des4 ees2.
  des4 des\breve*10/16 ees\breve*5/16 ces4. des4.
  bes4 aes2
}
tenorNotesAnt = \relative g {
  bes4 f\breve*7/16 ges\breve*7/16~ s16 ges4~ ges2.~
  ges4 f\breve*10/16 ges\breve*5/16~ ges4. f4.
  ges4~ ges f
}
bassNotesAnt = \relative c {
  ges'4 des\breve*7/16 ces\breve*7/16 s16 bes4 aes2.
  bes4 des\breve*10/16 ces\breve*5/16 aes4. des4.~
  des4~ des2
}
