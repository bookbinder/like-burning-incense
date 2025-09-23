\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key f \minor
psalmnum = "Ps_113"
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
  On the day of Pen -- te -- cost
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  they had all gath -- ered to -- geth -- er in one place,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c8 c des[ c] bes ees[ f] ees ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes[ bes]
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ des]
  \allowBreak c4 c \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone. Does it work?" s4. des4. c2 s16
  ees2. des2~ 4 c4. bes4~ bes aes
}
tenorNotesAnt = \relative g {
  ees4 f4. aes4.~ 2~ s16 aes2.~ 2~ 4~ 4. f4~ 2
}
bassNotesAnt = \relative c {
  aes4~ 4.~ 4.~ 2 s16 c2. des2 aes4~ 4. bes4 f2
}
