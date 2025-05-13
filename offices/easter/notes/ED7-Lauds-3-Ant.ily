\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_8"
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
  All things are yours,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and you are Christ's, and Christ is God's, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 ees8[ f] ees des([ f] aes4)
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 des\breve*5/16~ s16 des\breve*11/16~ des4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes\breve*5/16~ s16 aes\breve*8/16~ aes4.~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*5/16 f\breve*5/16 s16 des\breve*8/16 c4. bes4 ees2
}
