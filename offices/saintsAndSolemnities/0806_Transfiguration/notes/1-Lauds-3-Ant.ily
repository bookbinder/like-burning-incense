\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Ps_149"
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
  The law was gi -- ven through Mo -- ses
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and pro -- phe -- cy through E -- li -- jah.
  Ra -- diant in the di -- vine ma -- jes -- ty, they were seen
  spea -- king with the Lord.
}
sopNotesAnt = \relative e' {
  r8 des8 ges[ f] ges ees f ges aes[ des,] des4
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak ees
  \allowBreak des
  \allowBreak ces
  \allowBreak ces
  \allowBreak ees
  \allowBreak des4
  \allowBreak des
  \allowBreak r4 \bar "|"
  \allowBreak des8[ aes']
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak ces[ bes]
  \allowBreak aes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s\breve*5/16 s16 ces4.~ ces4
  aes2. des\breve*8/16 ees\breve*7/16 des\breve*7/16
  aes2
}
tenorNotesAnt = \relative g {
  bes\breve*8/16 aes\breve*5/16 s16 ges4.~ ges4~
  ges4 f2~ f\breve*8/16 ges\breve*7/16~ ges\breve*7/16~
  ges4( f)
}
bassNotesAnt = \relative c {
  ges'\breve*8/16 f\breve*5/16 s16 ces4. aes4
  des2 r4 des\breve*8/16 ces\breve*7/16 bes
  des2
}
