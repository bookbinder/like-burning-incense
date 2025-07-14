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
  A bright cloud o -- ver -- sha -- dowed them
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and sud -- den -- ly a voice spoke from the cloud:
  This is my be -- lo -- ved Son in whom I am well pleased:
  li -- sten to him.
}
sopNotesAnt = \relative e' {
  r8 f8 ees[ f] f([ ees] c4) c8 ees ees f f4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f([ ees f ees] c4)
  \allowBreak ees4
  \allowBreak f8
  \allowBreak g
  \allowBreak f4 \bar ","
  \allowBreak f8[ c']
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak g4( f) \bar ","
  \allowBreak f8([ ees] f[ ees c])
  \allowBreak c8
  \allowBreak ees
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c2~ c2. des\breve*5/16 s16 ees2
  c2. ees2 c4~ c\breve*5/16 f\breve*6/16 ees2
  des2 c\breve*7/16~ c2
}
tenorNotesAnt = \relative g {
  aes2 g2. aes\breve*5/16~ s16 aes2~
  aes2. g2 aes4 f\breve*5/16 aes\breve*6/16~ aes2~
  aes2 g\breve*7/16 aes2
}
bassNotesAnt = \relative c {
  f2 ees2. des\breve*5/16 s16 c2
  aes2. c2 f4 aes,\breve*5/16 des\breve*6/16 c2
  des2 ees\breve*7/16 f2
}
