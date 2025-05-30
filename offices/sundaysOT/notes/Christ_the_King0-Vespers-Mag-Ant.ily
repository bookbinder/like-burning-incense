\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "36"
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
  We will call him the peace -- ma -- ker,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and his throne shall stand firm for -- e -- ver.
}
sopNotesAnt = \relative e' {
  des4 des8 f[ ges aes] aes ges bes([ ces] bes4) bes8[ aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f[ ges]
  \allowBreak ees([ f] ges4)
  \allowBreak aes8
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*8/16 ees2 des2. s16
  bes\breve*5/16 ces4 des4. aes2
}
tenorNotesAnt = \relative g {
  f\breve*8/16 ges2 f2. s16
  ges\breve*5/16~ ges4~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
  des\breve*8/16~ des2~ des2. s16
  ees\breve*5/16 ces4 bes4. des2
}
