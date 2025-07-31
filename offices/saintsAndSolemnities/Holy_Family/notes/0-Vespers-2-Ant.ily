\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_147_12-20"
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
  Jo -- seph, son of Da -- vid,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  do not be a -- fraid to take Ma -- ry as your wife;
  the child in her womb is con -- ceived by the Ho -- ly
  Spi -- rit.
}
sopNotesAnt = \relative e' {
  des8 des f ges aes[ ges bes aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak ees[ f]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges
  \allowBreak ees
  \allowBreak ees4( des) \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ces
  \allowBreak ces([ ees] ges4)
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des2~ des2~ des4.~ s16 des2 bes4. des4 ees2
  aes,2~ aes4 s2 ces2. ees2 des4. aes2
}
tenorNotesAnt = \relative g {
  f2 ges2 f4.~ s16 f2 ges4.~ ges4~ ges2
  f2~ f4 aes2 ges2.~ ges2~ ges4.~ ges4 aes
}
bassNotesAnt = \relative c {
  des2~ des2~ des4.~ s16 des2 ees4. bes4 ces2
  des2~ des4 f2 ees2. ces2 bes4. des2
}
