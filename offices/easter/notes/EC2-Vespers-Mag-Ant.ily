\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
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
  This is what God asks of you:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  trust in the one whom he has sent,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 ees8 des[ ees] f4 ees8 des ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8[ aes]
  \allowBreak g
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
  c4. des2. c2. s16 des\breve*5/16 ees4. des4 bes2
}
tenorNotesAnt = \relative g {
  ees4. f2. aes2.~ s16 aes\breve*5/16~ 4.~ 4~ 4 g
}
bassNotesAnt = \relative c {
  aes4.~ 2.~ 2. s16 des\breve*5/16 c4. bes4 ees2
}
