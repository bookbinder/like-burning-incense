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
  I give you a new com -- mand -- ment:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  love one an -- oth -- er as I have loved you,
  says the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 g[ aes] f ees des[ f] f ees4 ees
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees4
  \allowBreak g8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak g[ f]
  \allowBreak ees4 \bar "'"
  \allowBreak des8[ f]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s4. s4 s4 s16 bes\breve*7/16 des\breve*5/16
  c4 des4. s4. des4 bes2
}
tenorNotesAnt = \relative g {
  aes2.~ 4.~ 4 g~ s16 g\breve*7/16 aes\breve*5/16~
  4~ 4.~ 4.~ 4~ 4 g
}
bassNotesAnt = \relative c {
  c2. bes4. ees4~ 4~ s16 ees\breve*7/16 des\breve*5/16
  aes4 bes4. c4. des4 ees2
}
