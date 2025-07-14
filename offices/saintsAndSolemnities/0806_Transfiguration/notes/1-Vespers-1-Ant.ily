\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  Je -- sus took Pe -- ter,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  James and his bro -- ther John, and led them up a high
  moun -- tain where they could be a -- lone, and he was
  trans -- fi -- gured be -- fore them.
}
sopNotesAnt = \relative e' {
  ees4 ees8 ees ees[ f] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f
  \allowBreak des
  \allowBreak ees
  \allowBreak ees4( f) \bar "'"
  \allowBreak f8
  \allowBreak ees[ aes]
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g[ f]
  \allowBreak f[ ees]
  \allowBreak ees4
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees
  \allowBreak f
  \allowBreak ees([ f] ees4) \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak des
  \allowBreak ees
  \allowBreak ees[-- f g]
  \allowBreak g
  \allowBreak ees
  \allowBreak f4
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 des\breve*10/16~ s16 des\breve*5/16 ees2.
  des4 c2 des2. c\breve*8/16 des\breve*5/16 bes2
}
tenorNotesAnt = \relative g {
  aes2~ aes\breve*10/16~ s16 aes\breve*5/16~ aes2.~
  aes4~ aes2 f2. aes\breve*8/16~ aes\breve*5/16~ aes4 g
}
bassNotesAnt = \relative c {
  c2 des\breve*10/16 s16 bes\breve*5/16 c2.
  des4 aes2~ aes2.~ aes\breve*8/16 des\breve*5/16 ees2
}
