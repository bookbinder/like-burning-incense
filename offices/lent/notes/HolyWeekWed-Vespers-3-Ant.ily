\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Col_1_12-20"
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
  In Christ we have found de -- liv -- erance;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  through his blood, the for -- give -- ness of our sins.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes4 aes8 ges f ges aes[ bes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[-- bes]
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*8/16 ees\breve*5/16 s16 des4~ 2
  bes\breve*5/16 aes4
}
tenorNotesAnt = \relative g {
  f\breve*8/16 ges\breve*5/16~ s16 ges4 f2
  ges\breve*5/16 f4
}
bassNotesAnt = \relative c {
  des\breve*8/16 ces\breve*5/16 s16 bes4 des2~
  \breve*5/16~ 4
}
