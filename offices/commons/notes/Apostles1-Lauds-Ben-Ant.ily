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
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  On the foun -- da -- tion stones
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  of the hea -- ven -- ly Je -- ru -- sa -- lem, the names of
  the twelve a -- pos -- tles of the Lamb are writ -- ten;
  the Lamb of God is the light of that ho -- ly ci -- ty.
}
sopNotesAnt = \relative e' {
  r8 des8 ees des des[ aes'] aes aes4 
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes
  \allowBreak ces[ bes]
  \allowBreak aes
  \allowBreak ces
  \allowBreak ces
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak bes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar "|"
  \allowBreak r8
  \allowBreak des,8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ces8([ ees] ges4)
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes4
  \allowBreak des,8
  \allowBreak des
  \allowBreak ees[ des]
  \allowBreak ces
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 des\breve*11/16 s16 ees\breve*6/16~
  ees2~ ees\breve*7/16 des4.~ des2 s\breve*5/16
  ces2. aes2 ces4. aes2
}
tenorNotesAnt = \relative g {
  f2~ f\breve*11/16 s16 ges\breve*6/16~
  ges2~ ges\breve*7/16~ ges4.~ ges4 f bes\breve*5/16
  ges2. f2 ges4.~ ges4 f
}
bassNotesAnt = \relative c {
  des2~ des\breve*11/16 s16 ces\breve*6/16~
  ces2 aes\breve*7/16 bes4. des2 ges\breve*5/16
  ees2. des2~ des4.~ des2
}
