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
  When Je -- sus had ri -- sen from the dead
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  on the mor -- ning af -- ter the sab -- bath, he ap -- peared
  first to Ma -- ry Mag -- da -- len, from whom he had cast out
  se -- ven de -- vils.
}
sopNotesAnt = \relative e' {
  r8 des8 f ges aes aes[ bes] aes f ges aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar ","
  \allowBreak des8
  \allowBreak des
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges[ aes]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s8 des8~ des\breve*12/16~ s16 des\breve*6/16 s2.
  des\breve*6/16 ees\breve*5/16 des2~ des2. aes2
}
tenorNotesAnt = \relative g {
  f4~ f\breve*12/16 s16 bes\breve*6/16 ges4 f2~
  f\breve*6/16 ges\breve*5/16~ ges2~ ges2.~ ges4 f
}
bassNotesAnt = \relative c {
  des4~ des\breve*12/16~ s16 des\breve*6/16~ des2.~
  des\breve*6/16 ces\breve*5/16 bes2~ bes2. des2
}
