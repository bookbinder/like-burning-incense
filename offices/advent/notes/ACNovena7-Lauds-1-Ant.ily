\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_119_145-152"
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
  Our God will come from Le -- ba -- non;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he shall be bril -- liant as the sun.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak g
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16 f4. ees\breve*5/16 s16 f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
  aes\breve*7/16 bes4.~ bes\breve*5/16~ s16 bes\breve*5/16~ bes4( aes4)
}
bassNotesAnt = \relative c {
  f\breve*7/16 ees4.~ ees\breve*5/16 s16 des\breve*5/16 f2
}
