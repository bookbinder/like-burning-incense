\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_149"
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
  As they watched,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he was lif -- ted up, and a cloud took him from their
  sight, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 f aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak aes
  \allowBreak f4
  \allowBreak g8
  \allowBreak f
  \allowBreak f
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*9/16~ s16 ees2 des2. bes4. c4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*9/16 s16 bes2~ bes2. g4. aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*9/16 s16 ees2 bes2. ees4.~ ees4~ ees2
}
