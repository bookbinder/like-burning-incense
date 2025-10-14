\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_121"
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
  The Lord watch -- es o -- ver his peo -- ple,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and pro -- tects them as the ap -- ple of his eye,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 f[ aes] bes4 bes8 aes bes aes aes[ f] f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f[ ees c]
  \allowBreak c4
  \allowBreak c8
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak aes
  \allowBreak g
  \allowBreak ees
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*6/16 s2. s16 s\breve*7/16
  s4. s4 s4. ees4 c2
}
tenorNotesAnt = \relative g {
  c2 des\breve*6/16 c2. s16 bes\breve*7/16
  aes4. bes4 aes4. g4 bes aes
}
bassNotesAnt = \relative c {
  aes'2~ \breve*6/16~ 2. s16 g\breve*7/16
  f4.~ 4~ 4.~ 4~ 2
}
