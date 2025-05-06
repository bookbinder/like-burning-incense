\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_100"
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
  Come in -- to the Lord's pre -- sence,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  sing -- ing for joy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 g8 aes f f[ ees] des[ f ees] ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak f[-- aes] \bar "'"
  \allowBreak g8
  \allowBreak aes
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16 des4. c\breve*5/16 s16 ees4 des4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*7/16 f4. aes\breve*5/16~ s16 aes4~ aes4~ aes4 g
}
bassNotesAnt = \relative c {
  aes\breve*7/16~ aes4.~ aes\breve*5/16 s16 c4 des4 ees2
}
