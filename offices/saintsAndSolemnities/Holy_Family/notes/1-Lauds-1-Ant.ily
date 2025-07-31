\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_63_2-9"
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
  The pa -- rents of Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  went each year to Je -- ru -- sa -- lem for the
  so -- lemn feast of Pas -- so -- ver.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ ges] f ges aes[ bes aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak ges8[ aes]
  \allowBreak ges[ aes]
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ ees]
  \allowBreak f
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees[ f ees]
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des2~ des4.~ des4 s16 bes\breve*8/16 ees\breve*7/16
  des2. bes4. aes2
}
tenorNotesAnt = \relative g {
  ges2.~ ges4. f4 s16 ges\breve*8/16~ ges\breve*7/16~
  ges2.~ ges4. f2
}
bassNotesAnt = \relative c {
  bes2. des4.~ des4 s16 ees\breve*8/16 ces\breve*7/16
  bes2. des4.~ des2
}
