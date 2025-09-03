\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Isa_42_10-16"
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
  Sing a new song to the Lord;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  pro -- claim his prai -- ses to the ends of the earth.
}
sopNotesAnt = \relative e' {
  ees8[ f] ees ees[ aes] aes4 g8 f f4( ees)
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des[ f aes]
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*9/16 s\breve*5/16 s16 s4. des\breve*7/16~ des2 bes4
}
tenorNotesAnt = \relative g {
  c\breve*9/16 bes\breve*5/16 s16 aes4.~ aes\breve*7/16~ aes2 g4
}
bassNotesAnt = \relative c {
  aes'\breve*9/16 g\breve*5/16 s16 c,4. f\breve*7/16 des2 ees4
}
