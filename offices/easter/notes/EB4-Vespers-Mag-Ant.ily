\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "50"
antKeysig = \key f \minor
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
  The man of God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  wel -- comes the light that search -- es his deeds
  and finds them true, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f f[ ees] f aes([ g] f4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g[ aes g]
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak bes[ c bes]
  \allowBreak c
  \allowBreak des[ c bes]
  \allowBreak bes
  \allowBreak c4( bes) \bar "'"
  \allowBreak bes8
  \allowBreak aes[ f]
  \allowBreak g[ aes g f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16~ s16 c2 ees f\breve*8/16~
  2 ees\breve*5/16 c4 des2 c4
}
tenorNotesAnt = \relative g {
  aes\breve*9/16~ s16 aes2 bes2~ \breve*8/16~
  2 g\breve*5/16 aes4 bes2 aes4
}
bassNotesAnt = \relative c {
  f\breve*9/16 s16 ees2~ 2 des\breve*8/16
  bes2 ees\breve*5/16 f4~ 2~ 4
}
