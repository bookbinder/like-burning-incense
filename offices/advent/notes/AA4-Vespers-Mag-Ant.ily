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
  The law will go forth from Zi -- on;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the word of the Lord from Je -- ru -- sa -- lem.
}
sopNotesAnt = \relative e' {
  r8 f8 aes4 aes8 aes g[ aes] g g[ aes bes] bes4
  \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak c[ des]
  \allowBreak c
  \allowBreak c
  \allowBreak bes([ c] bes4)
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes[ g]
  \allowBreak f
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16 f2. s16 ees2~ ees2. c4.~ c4
}
tenorNotesAnt = \relative g {
  aes\breve*9/16~ aes2.~ s16 aes2 g2 bes4~ bes4. aes4
}
bassNotesAnt = \relative c {
  f\breve*9/16 des2. s16 aes2 ees'2. f4.~ f4
}
