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
  Now that you are well a -- gain,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  do not sin a -- ny more, or some -- thing worse
  may hap -- pen to you.
}
sopNotesAnt = \relative e' {
  ees8[ f] ees des f aes aes g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g[ aes]
  \allowBreak f4
  \allowBreak g8
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c4. des4 ees4~ 4. s16 c2. bes4. des4.~
  4. bes~ 4
}
tenorNotesAnt = \relative g {
  aes4.~ 4~ 4 bes4. s16 aes2. g4. aes~
  aes~ aes g4
}
bassNotesAnt = \relative c {
  aes4. bes4 c ees4.~ s16 ees2.~ 4. des
  bes ees~ 4
}
