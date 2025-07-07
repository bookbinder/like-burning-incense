\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "72"
antKeysig = \key f \minor
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
  Christ died and rose from the dead,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that he might be the Lord of the li -- ving and the dead,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 g8[ aes] f ees4 c8 des des4( ees)
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak aes4
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak des([ ees] f4)
  \allowBreak ees8
  \allowBreak ees[ des]
  \allowBreak c4
  c \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16^"Different psalmtone. Does it work?" des4( c4.) s16
  des\breve*5/16 ees\breve*6/16 r4 des4( bes4.)~ bes4~ bes aes
}
tenorNotesAnt = \relative g {
  ees\breve*9/16 f4( aes4.)~ s16 aes\breve*5/16~ aes\breve*8/16 f4~ f4.~
  f4~ f2
}
bassNotesAnt = \relative c {
  aes\breve*9/16~ aes4~ aes4. s16 des\breve*5/16 c\breve*8/16
  des4~ des4. bes4 f2
}
