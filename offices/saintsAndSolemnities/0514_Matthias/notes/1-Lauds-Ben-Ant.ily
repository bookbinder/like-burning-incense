\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "19"
antKeysig = \key aes \major
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
  We must choose some -- one who was with us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all the time that the Lord Je -- sus lived a -- mong us;
  he will take his place with us in gi -- ving wit -- ness to the
  Lord's re -- sur -- rec -- tion. [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  ees8 ees g[ aes] f4 ees des8 ees f[ ees] ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des4
  \allowBreak f8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f4
  \allowBreak f8
  \allowBreak g
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4
  \allowBreak r4 \bar "|"
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak des
  \allowBreak ees
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f([ g] aes4)
  \allowBreak g8
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
  \allowBreak f8^"E.T."
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*10/16~ c\breve*7/16 s16 des2~ des\breve*7/16 bes2.
  s4 bes\breve*10/16 ees\breve*5/16 des4~ des2 bes2~ bes8 c4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*10/16 aes\breve*7/16~ s16 aes2~ aes\breve*7/16~ aes4 g2
  aes4~ aes\breve*10/16~ aes\breve*5/16~ aes4( f2) g2~ g8 aes4~ aes g
}
bassNotesAnt = \relative c {
  aes\breve*10/16~ aes\breve*7/16 s16 bes2 des\breve*7/16 ees2.
  c4 bes\breve*10/16 c\breve*5/16 des2. ees2~ ees8~ ees4~ ees2
}
