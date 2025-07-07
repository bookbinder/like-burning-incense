\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Isa_66_10-14a"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  I will see you a -- gain
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and your hearts will re -- joice, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ges aes[ bes] aes ges aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4 \bar "'"
  \allowBreak f8
  \allowBreak ges
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  f4 des\breve*8/16 s16 bes2 ees aes,
}
tenorNotesAnt = \relative g {
  aes4 f\breve*8/16 s16 ges2~ ges~ ges4 f
}
bassNotesAnt = \relative c {
  des4~ des\breve*8/16 s16 ees2 ces des
}
