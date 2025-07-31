\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Benedictus"
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
  Lord, give us light
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  through the e -- xam -- ple of your fa -- mily and guide
  our feet in -- to the way of peace.
}
sopNotesAnt = \relative e' {
  ees4 ees8[ aes] g g4( f)
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak g
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees4
  \allowBreak ees \bar ","
  \allowBreak ees8
  \allowBreak des[ f]
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f4( ees4) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 des\breve*11/16~ s16 des4 c4.
  des\breve*8/16~ des4. bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes\breve*11/16~ s16 aes4~ aes4.~
  aes\breve*8/16~ aes4. g2
}
bassNotesAnt = \relative c {
  aes'\breve*5/16 des,\breve*11/16 s16 aes4~ aes4.
  bes\breve*8/16 des4. ees2
}
