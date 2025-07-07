\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_135_1-12"
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
  The Lord does
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  what -- e -- ver he wills, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ aes] aes4( g)
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak g4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*5/16 s16 des2.~ des4 bes2
}
tenorNotesAnt = \relative g {
  aes2 bes\breve*5/16~ s16 bes2. aes4~ aes g
}
bassNotesAnt = \relative c {
  c2 ees\breve*5/16 s16 bes2. des4 ees2
}
