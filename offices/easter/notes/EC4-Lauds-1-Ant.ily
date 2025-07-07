\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_86"
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
  Peo -- ple of e -- very na -- tion shall come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and wor -- ship you, O Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f4 ees8 f aes bes c bes aes bes([ c] bes4)
    \noBreak \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak aes([ bes] aes4)
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f4( ees) \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 f\breve*5/16 s16 ees\breve*7/16 c\breve*5/16
  des4 bes2
}
tenorNotesAnt = \relative g {
  c\breve*9/16 aes\breve*5/16~ s16 aes\breve*7/16~ aes\breve*5/16~
  aes4~ aes4 g
}
bassNotesAnt = \relative c {
  aes'\breve*9/16 des,\breve*5/16 s16 c\breve*7/16 aes\breve*5/16
  des4 ees2
}
