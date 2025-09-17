\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "19"
antKeysig = \key aes \major
psalmnum = "Magnificat"
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
  Af -- ter eight days,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  al -- though the doors were locked, the Lord came
  a -- mong them and said: Peace be with you,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 f aes[ bes aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak des[ f]
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak aes
  \allowBreak bes4 \bar "'"
  \allowBreak bes8([-- c] aes4)
  \allowBreak aes8
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*8/16 s16 des\breve*5/16 c4. des\breve*8/16
  f4 ees\breve*5/16 bes\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*8/16~ s16 aes\breve*5/16~ aes4.~ aes\breve*8/16~
  aes4~ \breve*5/16 g aes4~ 4 g
}
bassNotesAnt = \relative c {
  c\breve*8/16 s16 des\breve*5/16 aes4. bes\breve*8/16
  des4 c\breve*5/16 ees~ 4~ 2
}
