\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "48"
antKeysig = \key f \minor
psalmnum = "Phil_2_6-11"
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
  Lord, send the Lamb,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the ru -- ler of the earth, from the rock in the
  de -- sert to the moun -- tain of the daugh -- ter of Zi -- on.
}
sopNotesAnt = \relative e' {
  c4 c8[ des] bes ees([ f] aes4)
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak f([ aes] g4) \bar "'"
  \allowBreak f8
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ g ees]
  \allowBreak ees4
  \allowBreak c8
  \allowBreak des
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak des[ c]
  \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. ees\breve*5/16 s16 c\breve*5/16 ees2. des2~
  des4. s2 bes\breve*5/16 des4 bes4~ bes aes
}
tenorNotesAnt = \relative g {
  ees4 f4. aes\breve*5/16~ s16 aes\breve*5/16 bes2.~ bes2
  aes4.~ aes2 f\breve*5/16~ f2~ f2
}
bassNotesAnt = \relative c {
  aes4 des4. c\breve*5/16 s16 f\breve*5/16 ees2. bes2
  des4. c2 des\breve*5/16 bes2 f2
}
